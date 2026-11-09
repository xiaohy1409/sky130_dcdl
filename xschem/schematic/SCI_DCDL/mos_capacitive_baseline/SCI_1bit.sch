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
N 20 290 20 350 {lab=#net2}
N 170 290 170 350 {lab=#net3}
N 310 280 310 350 {lab=#net4}
N 450 280 450 350 {lab=#net5}
N 580 280 580 350 {lab=#net6}
N -30 390 -10 390 {lab=VSS}
N -30 390 -30 440 {lab=VSS}
N -30 440 70 440 {lab=VSS}
N 70 390 70 440 {lab=VSS}
N 50 390 70 390 {lab=VSS}
N 20 390 20 440 {lab=VSS}
N 120 390 140 390 {lab=#net7}
N 120 390 120 440 {lab=#net7}
N 120 440 220 440 {lab=#net7}
N 220 390 220 440 {lab=#net7}
N 200 390 220 390 {lab=#net7}
N 170 390 170 440 {lab=#net7}
N 260 390 280 390 {lab=VSS}
N 260 390 260 440 {lab=VSS}
N 260 440 360 440 {lab=VSS}
N 360 390 360 440 {lab=VSS}
N 340 390 360 390 {lab=VSS}
N 400 390 420 390 {lab=VSS}
N 400 390 400 440 {lab=VSS}
N 400 440 500 440 {lab=VSS}
N 500 390 500 440 {lab=VSS}
N 480 390 500 390 {lab=VSS}
N 310 390 310 440 {lab=VSS}
N 450 390 450 440 {lab=VSS}
N 530 390 550 390 {lab=VSS}
N 530 390 530 440 {lab=VSS}
N 530 440 630 440 {lab=VSS}
N 630 390 630 440 {lab=VSS}
N 610 390 630 390 {lab=VSS}
N 580 390 580 440 {lab=VSS}
N 180 -0 180 190 {lab=#net1}
N 20 190 180 190 {lab=#net1}
N 20 190 20 230 {lab=#net1}
N 170 190 170 230 {lab=#net1}
N 180 190 310 190 {lab=#net1}
N 310 190 310 220 {lab=#net1}
N 310 190 450 190 {lab=#net1}
N 450 190 450 220 {lab=#net1}
N 450 190 580 190 {lab=#net1}
N 580 190 580 220 {lab=#net1}
N -60 480 20 480 {lab=VSS}
N 20 440 20 480 {lab=VSS}
N 20 480 580 480 {lab=VSS}
N 580 440 580 480 {lab=VSS}
N 450 440 450 480 {lab=VSS}
N 310 440 310 480 {lab=VSS}
N 20 260 80 260 {lab=VSS}
N 80 260 80 480 {lab=VSS}
N 170 260 220 260 {lab=VSS}
N 220 260 230 260 {lab=VSS}
N 230 260 230 480 {lab=VSS}
N 310 250 350 250 {lab=VSS}
N 350 250 360 250 {lab=VSS}
N 360 250 370 250 {lab=VSS}
N 370 250 370 480 {lab=VSS}
N 450 250 500 250 {lab=VSS}
N 500 250 510 250 {lab=VSS}
N 510 250 510 480 {lab=VSS}
N 570 250 660 250 {lab=VSS}
N 660 250 660 480 {lab=VSS}
N 580 480 660 480 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -50 30 0 0 {name=M1
W=2
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
W=5
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
C {sky130_fd_pr/nfet_01v8.sym} 0 260 0 0 {name=M4
W=0.42
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
C {ipin.sym} -180 240 0 0 {name=p5 lab=A4}
C {sky130_fd_pr/nfet_01v8.sym} 150 260 0 0 {name=M6
W=0.42
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
C {sky130_fd_pr/nfet_01v8.sym} 290 250 0 0 {name=M7
W=0.42
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
C {sky130_fd_pr/nfet_01v8.sym} 430 250 0 0 {name=M8
W=0.42
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
C {sky130_fd_pr/nfet_01v8.sym} 560 250 0 0 {name=M9
W=0.42
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
C {sky130_fd_pr/nfet_01v8.sym} 20 370 1 0 {name=M10
W=8
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
C {sky130_fd_pr/nfet_01v8.sym} 170 370 1 0 {name=M11
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 310 370 1 0 {name=M12
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 450 370 1 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 580 370 1 0 {name=M14
W=0.5
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
C {ipin.sym} -180 270 0 0 {name=p6 lab=A3}
C {ipin.sym} -180 300 0 0 {name=p7 lab=A2}
C {ipin.sym} -180 330 0 0 {name=p8 lab=A1}
C {ipin.sym} -180 360 0 0 {name=p9 lab=A0}
C {lab_pin.sym} -20 260 0 0 {name=p10 sig_type=std_logic lab=A4}
C {lab_pin.sym} 130 260 0 0 {name=p11 sig_type=std_logic lab=A3}
C {lab_pin.sym} 270 250 0 0 {name=p12 sig_type=std_logic lab=A2}
C {lab_pin.sym} 410 250 0 0 {name=p13 sig_type=std_logic lab=A1}
C {lab_pin.sym} 540 250 0 0 {name=p14 sig_type=std_logic lab=A0}
C {lab_pin.sym} -60 480 0 0 {name=p15 sig_type=std_logic lab=VSS}
