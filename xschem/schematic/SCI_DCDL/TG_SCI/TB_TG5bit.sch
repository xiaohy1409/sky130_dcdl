v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -580 90 -580 110 {lab=IN}
N -210 40 -210 50 {lab=#net1}
N -210 40 -150 40 {lab=#net1}
N -290 20 -290 50 {lab=#net2}
N -290 20 -150 20 {lab=#net2}
N -360 0 -360 50 {lab=#net3}
N -360 0 -150 -0 {lab=#net3}
N -430 -20 -430 50 {lab=#net4}
N -430 -20 -150 -20 {lab=#net4}
N -580 -60 -580 90 {lab=IN}
N -580 -60 -150 -60 {lab=IN}
N -490 -40 -490 60 {lab=#net5}
N -490 -40 -150 -40 {lab=#net5}
N -670 -100 -670 60 {lab=#net6}
N -670 -100 -40 -100 {lab=#net6}
N -40 -100 -40 -90 {lab=#net6}
N 150 -10 250 -10 {lab=OUT}
C {vsource.sym} -580 140 0 0 {name=V2 value="PULSE(0 1.8 1n 50p 50p 2n 4n)"  savecurrent=false}
C {vsource.sym} -210 80 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -40 70 0 0 {name=l2 lab=0}
C {gnd.sym} -580 170 0 0 {name=l3 lab=0}
C {gnd.sym} -210 110 0 0 {name=l4 lab=0}
C {vsource.sym} -290 80 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -290 110 0 0 {name=l1 lab=0}
C {vsource.sym} -360 80 0 0 {name=V4 value=1.8 savecurrent=false}
C {gnd.sym} -360 110 0 0 {name=l5 lab=0}
C {vsource.sym} -430 80 0 0 {name=V5 value=1.8 savecurrent=false}
C {gnd.sym} -430 110 0 0 {name=l6 lab=0}
C {vsource.sym} -490 90 0 0 {name=V6 value=1.8 savecurrent=false}
C {gnd.sym} -490 120 0 0 {name=l7 lab=0}
C {vsource.sym} -670 90 0 0 {name=V7 value=1.8 savecurrent=false}
C {gnd.sym} -670 120 0 0 {name=l8 lab=0}
C {SCI_TG_5bit.sym} 0 -10 0 0 {name=x1}
C {code_shown.sym} -150 170 0 0 {name=s1 only_toplevel=false value="
.option rshunt=1e12
.tran 1p 25n 0 1p

.control

* Save signals for measurement
save v(IN) v(OUT)

* Output file
echo code t_rise_ps t_fall_ps t_pd_ps > /home/xiaohi/Projects/sky130_dcdl/results/csv/sci_tg_5bit.dat

* Sweep 32 control codes
foreach b4 0 1
 foreach b3 0 1
  foreach b2 0 1
   foreach b1 0 1
    foreach b0 0 1

     * Calculate control voltages
     let v0 = 1.8 * $b0
     let v1 = 1.8 * $b1
     let v2 = 1.8 * $b2
     let v3 = 1.8 * $b3
     let v4 = 1.8 * $b4

     * Update voltage sources
     alter V3 dc = $&v0
     alter V1 dc = $&v1
     alter V4 dc = $&v2
     alter V5 dc = $&v3
     alter V6 dc = $&v4

     * Run transient
     run

     * Propagation delay: two inverters
     meas tran t_rise TRIG v(IN) VAL=0.9 RISE=2 TARG v(OUT) VAL=0.9 RISE=2

     meas tran t_fall TRIG v(IN) VAL=0.9 FALL=2 TARG v(OUT) VAL=0.9 FALL=2

     * Calculate delay in ps
     let code = 16*$b4 + 8*$b3 + 4*$b2 + 2*$b1 + $b0

     let rise_ps = t_rise * 1e12
     let fall_ps = t_fall * 1e12
     let pd_ps = (rise_ps + fall_ps)/2

     * Write results
     echo $&code $&rise_ps $&fall_ps $&pd_ps >> /home/xiaohi/Projects/sky130_dcdl/results/csv/sci_tg_5bit.dat

    end
   end
  end
 end
end

echo SCI TG 5-bit sweep completed
.endc
"}
C {code.sym} -360 190 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {lab_pin.sym} 250 -10 2 0 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -580 -60 0 0 {name=p2 sig_type=std_logic lab=IN}
