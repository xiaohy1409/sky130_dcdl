v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -320 -130 -260 {lab=OUT}
N -130 -290 -70 -290 {lab=OUT}
N -240 -230 -170 -230 {lab=IN}
N -240 -350 -240 -230 {lab=IN}
N -240 -350 -170 -350 {lab=IN}
N -270 -300 -240 -300 {lab=IN}
N -130 -400 -130 -380 {lab=VDD}
N -130 -350 -80 -350 {lab=VDD}
N -80 -390 -80 -350 {lab=VDD}
N -130 -390 -80 -390 {lab=VDD}
N -130 -200 -130 -180 {lab=VSS}
N -130 -230 -70 -230 {lab=VSS}
N -70 -230 -70 -190 {lab=VSS}
N -130 -190 -70 -190 {lab=VSS}
N -130 -420 -130 -400 {lab=VDD}
N -130 -180 -130 -160 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -150 -230 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -150 -350 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -270 -300 0 0 {name=p3 lab=IN}
C {opin.sym} -70 -290 0 0 {name=p1 lab=OUT}
C {iopin.sym} -130 -420 0 0 {name=p2 lab=VDD}
C {iopin.sym} -130 -160 0 0 {name=p4 lab=VSS}
