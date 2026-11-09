v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -40 -30 -0 {lab=#net1}
N 560 -40 560 0 {lab=OUT}
N 490 -70 520 -70 {lab=#net1}
N 490 -70 490 30 {lab=#net1}
N 490 30 520 30 {lab=#net1}
N -30 -20 150 -20 {lab=#net1}
N 560 -20 660 -20 {lab=OUT}
N -100 -70 -70 -70 {lab=IN}
N -100 -70 -100 30 {lab=IN}
N -100 30 -70 30 {lab=IN}
N -160 -20 -100 -20 {lab=IN}
N 560 -140 560 -100 {lab=VDD}
N -30 -140 220 -140 {lab=VDD}
N -30 -140 -30 -100 {lab=VDD}
N -30 -70 30 -70 {lab=VDD}
N 30 -140 30 -70 {lab=VDD}
N 560 -70 630 -70 {lab=VDD}
N 630 -140 630 -70 {lab=VDD}
N 560 -140 630 -140 {lab=VDD}
N 600 -160 620 -160 {lab=VDD}
N 600 -160 600 -140 {lab=VDD}
N -30 60 -30 80 {lab=VSS}
N 560 30 640 30 {lab=VSS}
N -30 80 -30 150 {lab=VSS}
N 560 60 560 150 {lab=VSS}
N 220 -140 560 -140 {lab=VDD}
N -30 150 -30 160 {lab=VSS}
N -30 160 560 160 {lab=VSS}
N 560 150 560 160 {lab=VSS}
N 150 -20 490 -20 {lab=#net1}
N -30 30 10 30 {lab=VSS}
N 10 30 10 160 {lab=VSS}
N 640 30 640 160 {lab=VSS}
N 560 160 640 160 {lab=VSS}
N 180 -20 180 0 {lab=#net1}
N 180 -0 180 190 {lab=#net1}
N 130 190 130 200 {lab=#net1}
N 130 190 270 190 {lab=#net1}
N 270 190 270 200 {lab=#net1}
N 130 260 130 270 {lab=#net2}
N 130 270 270 270 {lab=#net2}
N 270 260 270 270 {lab=#net2}
N 310 230 320 230 {lab=#net3}
N 80 230 90 230 {lab=A0}
N 230 230 270 230 {lab=VDD}
N 50 230 80 230 {lab=A0}
N 70 230 70 310 {lab=A0}
N 320 230 340 230 {lab=#net3}
N 130 230 150 230 {lab=VSS}
N 150 160 150 230 {lab=VSS}
N 70 310 70 360 {lab=A0}
N 70 360 120 360 {lab=A0}
N 260 360 340 360 {lab=#net3}
N 340 230 340 360 {lab=#net3}
N 200 360 260 360 {lab=#net3}
C {sky130_fd_pr/nfet_01v8.sym} -50 30 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 540 30 0 0 {name=M3
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} -160 -20 0 0 {name=p1 lab=IN}
C {opin.sym} 660 -20 0 0 {name=p2 lab=OUT}
C {iopin.sym} 620 -160 0 0 {name=p3 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} -50 -70 0 0 {name=M5
W=2.5
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 540 -70 0 0 {name=M2
W=2.5
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 640 160 0 0 {name=p4 lab=VSS}
C {ipin.sym} 50 230 0 0 {name=p5 lab=A0}
C {sky130_fd_pr/nfet_01v8.sym} 110 230 0 0 {name=M4
W=\{WTG\}
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 290 230 2 0 {name=M10
W=\{WTG\}
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 230 230 0 0 {name=p12 sig_type=std_logic lab=VDD}
