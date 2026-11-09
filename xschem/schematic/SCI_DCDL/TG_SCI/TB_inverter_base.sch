v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 90 -10 190 -10 {lab=OUT}
N -360 -20 -360 30 {lab=IN}
N -360 -20 -210 -20 {lab=IN}
N -480 -70 -480 40 {lab=#net1}
N -480 -70 -80 -70 {lab=#net1}
N -80 -70 -80 -60 {lab=#net1}
C {inverter_base.sym} -60 -10 0 0 {name=x1}
C {vsource.sym} -360 60 0 0 {name=V2 value="PULSE(0 1.8 1n 50p 50p 2n 4n)"  savecurrent=false}
C {gnd.sym} -70 40 0 0 {name=l2 lab=0}
C {vsource.sym} -480 70 0 0 {name=V7 value=1.8 savecurrent=false}
C {gnd.sym} -480 100 0 0 {name=l8 lab=0}
C {code_shown.sym} -210 170 0 0 {name=s1 only_toplevel=false value=".tran 1p 25n 0 1p

.control
save v(IN) v(OUT)
run

meas tran t_rise TRIG v(IN) VAL=0.9 RISE=2 TARG v(OUT) VAL=0.9 RISE=2
meas tran t_fall TRIG v(IN) VAL=0.9 FALL=2 TARG v(OUT) VAL=0.9 FALL=2

let t_pd = (t_rise + t_fall)/2
let t_pd_ps = t_pd*1e12

print t_pd_ps
.endc
"}
C {code.sym} -380 160 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {lab_pin.sym} 190 -10 2 0 {name=p1 sig_type=std_logic lab=OUT}
C {gnd.sym} -360 90 0 0 {name=l1 lab=0}
C {lab_pin.sym} -360 -20 0 0 {name=p2 sig_type=std_logic lab=IN}
