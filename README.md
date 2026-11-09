# SKY130 DCDL — Hướng dẫn vẽ schematic và mô phỏng pre-layout

Repository lưu các schematic, symbol, SPICE netlist và kết quả mô phỏng đã thực hiện trong quá trình khảo sát DCDL trên **SKY130**, chủ yếu bằng **Xschem + Ngspice**.

> **Phạm vi:** Đây là hướng dẫn ghi lại flow nhóm đã sử dụng, không phải tài liệu cài đặt SKY130 PDK từ đầu. Máy chạy mô phỏng cần có Xschem, Ngspice và SKY130 PDK được cấu hình hoạt động.

## Bước 1 — Mở project và vẽ schematic

1. Mở schematic có sẵn trong `xschem/schematic/` hoặc tạo file `.sch` mới bằng Xschem.
2. Chèn các transistor SKY130 (`nfet_01v8`, `pfet_01v8`), đặt W/L và nối dây theo kiến trúc cần khảo sát.
3. Tạo các chân vào/ra và nguồn, chẳng hạn `IN`, `OUT`, `A0`…`A4`, `VDD`, `VSS`.
4. Lưu schematic bằng tên có ý nghĩa, ví dụ `SCI_TG_5bit.sch`.

Các schematic hiện có trong repo có thể dùng làm mẫu. **Không đặt lệnh mô phỏng vào schematic của delay cell**; các nguồn kích thích và lệnh mô phỏng được đặt ở testbench.

## Bước 2 — Tạo symbol từ schematic (phím `a`)

1. Mở file schematic `.sch` vừa hoàn thành.
2. Bảo đảm đã có đủ các chân cần đưa ra ngoài.
3. Đưa con trỏ vào vùng vẽ rồi nhấn **`a`** (phím a thường, không giữ Shift) để Xschem tự tạo symbol.
4. File `.sym` được lưu **cùng thư mục** với file `.sch` và có cùng tên gốc. Ví dụ: `SCI_TG_5bit.sch` → `SCI_TG_5bit.sym`.


## Bước 3 — Tạo testbench schematic

1. Tạo file testbench mới, ví dụ `TB_TG5bit.sch`.
2. Dùng **Insert** (`ctr+i`) để đặt symbol của delay cell vừa tạo vào testbench.
3. Thêm các nguồn `vsource.sym` cho `VDD`, `IN`, và các mã điều khiển `A0`…`A4`; nối `VSS` về ground.
4. Với các bài thử trong repo, nguồn chính là **VDD = 1,8 V**; ví dụ xung `IN` từng dùng:

   ```spice
   PULSE(0 1.8 1n 50p 50p 2n 4n)
   ```

5. Nối đầu ra mạch ra nhãn `OUT`, và đầu vào cho nhãn "IN" rồi lưu testbench.

## Bước 4 — Thêm `TT_MODELS` và `code_shown.sym`

**A. Nạp model SKY130 (`TT_MODELS`)**

- Trong testbench, thêm khối code dùng để nạp SPICE model SKY130 (tên hiển thị từng sử dụng: `TT_MODELS`).
- Nội dung tương ứng với thư viện model và corner điển hình:

  ```spice
  .lib $::SKYWATER_MODELS/sky130.lib.spice tt
  ```

- `tt` là process corner *typical–typical*. Đường dẫn thư viện cần được Xschem/PDK trên **máy đang sử dụng** nhận diện đúng.

**B. Chèn script mô phỏng (`code_shown.sym`)**

1. Nhấn **Insert** (`ctr+i`), chọn `devices/code_shown.sym` và đặt vào **testbench**.
2. Chọn khối rồi nhấn **`q`** để mở thuộc tính.
3. Đặt `only_toplevel=true` và dán script SPICE/Ngspice vào thuộc tính `value`.
4. Với các phép thử của nhóm, script đã dùng `.tran`, `.control`, `run`, `meas`, vòng lặp `foreach`, `alter` và `echo` để **quét mã, đo delay và ghi bảng `.dat`**. Có thể xem các testbench `.sch` hiện có để lấy đúng script của từng bài thử.

> Nếu schematic dùng **standard-cell inverter SKY130** thay vì inverter vẽ bằng transistor, mô phỏng SPICE còn cần định nghĩa subcircuit tương ứng của standard-cell library. Đây là lỗi `unknown subckt` nhóm đã từng gặp; `TT_MODELS` riêng lẻ không thay thế định nghĩa standard cell.

## Bước 5 — Chọn thư mục xuất netlist trong Xschem (quan trọng)

Tại **cửa sổ Xschem**, vào menu:

**`Simulation` → `Set netlist Dir`**

- Chọn thư mục muốn Xschem xuất netlist, ví dụ thư mục `xschem/simulation/` nằm trong bản clone trên máy bạn.
- **Kiểm tra lại đường dẫn trên chính máy của mình**, vì đường dẫn tuyệt đối của người tạo repo (ví dụ `/home/xiaohi/...`) không dùng nguyên xi được trên máy khác.
- Nếu muốn theo cấu trúc có sẵn, có thể chọn kiểu thư mục xuất khác ngay trong menu `Simulation`, nhưng cần biết netlist được lưu ở đâu trước khi chạy.

## Bước 6 — Bật hiển thị netlist sau khi xuất (quan trọng)

Trong cùng menu **`Simulation`**, bật mục:

**`Show netlist after netlist command`**

- Phím tắt: **`Shift+A`** (chữ A hoa).
- Khi mục này được bật, sau lệnh **Netlist**, Xschem mở nội dung netlist để kiểm tra.
- Trước khi xuất, bảo đảm chế độ netlist là **SPICE** (không phải Verilog).

## Bước 7 — Netlist → Simulate → kiểm tra kết quả

1. Mở **file testbench** (không phải schematic cell) ở mức top-level.
2. Nhấn **Netlist** trên thanh công cụ, hoặc phím **`n`**, để tạo file `.spice`.
3. Kiểm tra netlist vừa hiện ra: nguồn kích thích, lệnh `.lib`, nội dung script đo và các subcircuit phải có mặt.
4. Nhấn **Simulate** để Xschem gọi Ngspice chạy netlist.
5. Script đo đã dùng trong repo có thể ghi kết quả trực tiếp ra file `.dat`, không bắt buộc mở waveform viewer.
6. Mở `results/csv/` để xem các bảng kết quả, chẳng hạn `sci_tg_5bit.dat`, `tg_sizing.dat` và `sci5_delay.dat`.

**Khi dùng lại trên máy khác:** Kiểm tra các đường dẫn **file kết quả** được ghi ngay trong script `code_shown.sym`; nếu còn là đường dẫn tuyệt đối của máy tạo repo, cần đổi thành vị trí phù hợp trên máy mình để Ngspice ghi được dữ liệu.

## Các thư mục đáng chú ý

```text
sky130_dcdl/
├── xschem/
│   ├── schematic/        # Schematic, symbol và testbench
│   └── simulation/       # Các netlist được xuất (nếu chọn đường dẫn này)
├── simulation/           # Netlist/script mô phỏng đã lưu
├── results/
│   └── csv/              # Dữ liệu delay, sizing… (*.dat)
└── .gitignore
```

Tên file và vị trí cụ thể có thể khác giữa các kiến trúc. Hãy mở các file `.sch` và `.spice` hiện có để đối chiếu.

## Tài liệu Xschem chính thức

- [Xschem — Creating Symbols](https://xschem.sourceforge.io/stefan/xschem_man/creating_symbols.html)
- [Xschem — Netlisting](https://xschem.sourceforge.io/stefan/xschem_man/netlisting.html)
- [Xschem — SKY130 Integration](https://xschem.sourceforge.io/stefan/xschem_man/tutorial_xschem_sky130.html)
