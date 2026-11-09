v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -40 -130 -20 {lab=#net1}
N -130 -40 -70 -40 {lab=#net1}
N -70 -40 -60 -40 {lab=#net1}
N -310 -110 -310 -10 {lab=#net2}
N -310 -110 -10 -110 {lab=#net2}
N -10 -110 -10 -90 {lab=#net2}
N -230 -60 -230 10 {lab=IN}
N -230 -60 -60 -60 {lab=IN}
N -230 10 -230 30 {lab=IN}
N 70 -40 130 -40 {lab=OUT}
C {SCI_1bit.sym} 0 -10 0 0 {name=x1}
C {vsource.sym} -130 10 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -230 60 0 0 {name=V2 value="PULSE(0 1.8 1n 50p 50p 2n 4n)"  savecurrent=false}
C {vsource.sym} -310 20 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} 0 10 0 0 {name=l1 lab=0}
C {gnd.sym} -130 40 0 0 {name=l2 lab=0}
C {gnd.sym} -230 90 0 0 {name=l3 lab=0}
C {gnd.sym} -310 50 0 0 {name=l4 lab=0}
C {lab_pin.sym} 130 -40 2 0 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -220 -60 1 0 {name=p2 sig_type=std_logic lab=IN}
C {code_shown.sym} 20 120 0 0 {name=s1 only_toplevel=false value="

.param WTG=0.5
.option rshunt=1e12
.tran 1p 25n 0 1p

.control

* Output file
echo W_um t_off_ps t_on_ps delta_ps > /home/xiaohi/Projects/sky130_dcdl/results/csv/tg_sizing.dat

* Sweep transistor width in um
foreach w 0.5 1 2 4 8

  alterparam WTG = $w
  reset
  save v(IN) v(OUT)

  * TG OFF
  alter V1 dc = 0
  run

  meas tran tr_off TRIG v(IN) VAL=0.9 RISE=2 TARG v(OUT) VAL=0.9 RISE=2
  meas tran tf_off TRIG v(IN) VAL=0.9 FALL=2 TARG v(OUT) VAL=0.9 FALL=2

  let td_off = (tr_off + tf_off)*0.5e12
  set delay_off = $&td_off

  * TG ON
  alter V1 dc = 1.8
  run

  meas tran tr_on TRIG v(IN) VAL=0.9 RISE=2 TARG v(OUT) VAL=0.9 RISE=2
  meas tran tf_on TRIG v(IN) VAL=0.9 FALL=2 TARG v(OUT) VAL=0.9 FALL=2

  let td_on = (tr_on + tf_on)*0.5e12
  set delay_on = $&td_on

  * Calculate incremental delay
  setplot const
  let delta = $delay_on - $delay_off

  echo $w $delay_off $delay_on $&delta >> /home/xiaohi/Projects/sky130_dcdl/results/csv/tg_sizing.dat

end

echo TG sizing sweep completed
.endc
"}
C {code.sym} -190 140 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
