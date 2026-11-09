v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -580 -60 -580 -20 {lab=VSS}
N 10 -60 10 -20 {lab=OUT}
N -60 -90 -30 -90 {lab=VSS}
N -60 -90 -60 10 {lab=VSS}
N -60 10 -30 10 {lab=VSS}
N -580 -40 -400 -40 {lab=VSS}
N 10 -40 110 -40 {lab=OUT}
N -650 -90 -620 -90 {lab=IN}
N -650 -90 -650 10 {lab=IN}
N -650 10 -620 10 {lab=IN}
N -710 -40 -650 -40 {lab=IN}
N 10 -160 10 -120 {lab=VDD}
N -580 -160 -330 -160 {lab=VDD}
N -580 -160 -580 -120 {lab=VDD}
N -580 -90 -520 -90 {lab=VDD}
N -520 -160 -520 -90 {lab=VDD}
N 10 -90 80 -90 {lab=VDD}
N 80 -160 80 -90 {lab=VDD}
N 10 -160 80 -160 {lab=VDD}
N 50 -180 70 -180 {lab=VDD}
N 50 -180 50 -160 {lab=VDD}
N -580 40 -580 60 {lab=VSS}
N 10 10 90 10 {lab=VSS}
N -330 -160 10 -160 {lab=VDD}
N -400 -40 -60 -40 {lab=VSS}
N -580 10 -540 10 {lab=VSS}
N 10 40 10 60 {lab=VSS}
N 10 60 120 60 {lab=VSS}
N 90 10 90 60 {lab=VSS}
N -580 60 10 60 {lab=VSS}
N -540 10 -540 60 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -600 10 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -10 10 0 0 {name=M3
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
C {ipin.sym} -710 -40 0 0 {name=p1 lab=IN}
C {opin.sym} 110 -40 0 0 {name=p2 lab=OUT}
C {iopin.sym} 70 -180 0 0 {name=p3 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} -600 -90 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} -10 -90 0 0 {name=M2
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
C {iopin.sym} 120 60 0 0 {name=p4 lab=VSS}
