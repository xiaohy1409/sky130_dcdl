v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -760 -200 -760 -0 {lab=#net1}
N -760 -200 -100 -200 {lab=#net1}
N -100 -200 -100 -160 {lab=#net1}
N -330 -20 -330 -10 {lab=#net2}
N -330 -30 -330 -20 {lab=#net2}
N -330 -30 -260 -30 {lab=#net2}
N -410 -50 -410 -10 {lab=#net3}
N -410 -50 -260 -50 {lab=#net3}
N -480 -70 -480 -10 {lab=#net4}
N -480 -70 -260 -70 {lab=#net4}
N -550 -90 -550 -10 {lab=#net5}
N -550 -90 -260 -90 {lab=#net5}
N -610 -110 -610 -10 {lab=#net6}
N -610 -110 -260 -110 {lab=#net6}
N -690 -130 -690 40 {lab=IN}
N -690 -130 -260 -130 {lab=IN}
N -100 -0 -100 10 {lab=0}
N 40 -90 90 -90 {lab=OUT}
C {/home/xiaohi/Projects/sky130_dcdl/xschem/schematic/SCI_DCDL/SCI_1bit.sym} -110 -80 0 0 {name=x1}
C {vsource.sym} -330 20 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -410 20 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -480 20 0 0 {name=V3 value=0 savecurrent=false}
C {vsource.sym} -550 20 0 0 {name=V4 value=0 savecurrent=false}
C {vsource.sym} -610 20 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} -690 70 0 0 {name=V6 value="PULSE(0 1.8 1n 50p 50p 2n 4n)" savecurrent=false}
C {vsource.sym} -760 30 0 0 {name=V7 value=1.8 savecurrent=false}
C {gnd.sym} -100 10 0 0 {name=l1 lab=0}
C {gnd.sym} -330 50 0 0 {name=l2 lab=0}
C {gnd.sym} -410 50 0 0 {name=l3 lab=0}
C {gnd.sym} -480 50 0 0 {name=l4 lab=0}
C {gnd.sym} -550 50 0 0 {name=l5 lab=0}
C {gnd.sym} -610 50 0 0 {name=l6 lab=0}
C {gnd.sym} -690 100 0 0 {name=l7 lab=0}
C {gnd.sym} -760 60 0 0 {name=l8 lab=0}
C {lab_pin.sym} 90 -90 2 0 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -680 -130 1 0 {name=p2 sig_type=std_logic lab=IN}
C {code.sym} -280 100 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} -120 110 0 0 {name=s1 only_toplevel=false value="
.option rshunt=1e12
.tran 2p 25n

.control
save v(IN) v(OUT)

* Output file
echo code t_rise_ps t_fall_ps t_pd_ps > /home/xiaohi/Projects/sky130_dcdl/results/csv/sci5_delay.dat

* Sweep 5-bit: 00000 -> 11111
foreach b4 0 1
 foreach b3 0 1
  foreach b2 0 1
   foreach b1 0 1
    foreach b0 0 1

     * Convert bits to voltage
     let v0 = 1.8 * $b0
     let v1 = 1.8 * $b1
     let v2 = 1.8 * $b2
     let v3 = 1.8 * $b3
     let v4 = 1.8 * $b4

     * Set control voltage
     alter V1 $&v0
     alter V2 $&v1
     alter V3 $&v2
     alter V4 $&v3
     alter V5 $&v4

     * Run transient simulation
     run

     * Measure propagation delay
     meas tran t_rise TRIG v(IN) VAL=0.9 RISE=2 TARG v(OUT) VAL=0.9 RISE=2
     meas tran t_fall TRIG v(IN) VAL=0.9 FALL=2 TARG v(OUT) VAL=0.9 FALL=2

     * Calculate code and delay in ps
     let code = 16 * $b4 + 8 * $b3 + 4 * $b2 + 2 * $b1 + $b0
     let rise_ps = t_rise * 1e12
     let fall_ps = t_fall * 1e12
     let pd_ps = (rise_ps + fall_ps)/2

     * Append result to file
     echo $&code $&rise_ps $&fall_ps $&pd_ps >> /home/xiaohi/Projects/sky130_dcdl/results/csv/sci5_delay.dat

    end
   end
  end
 end
end

echo Sweep completed: 32 codes
.endc
 "}
