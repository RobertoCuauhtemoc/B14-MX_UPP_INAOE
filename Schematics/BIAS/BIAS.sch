v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -250 70 -230 {lab=VDDH}
N 70 -230 90 -230 {lab=VDDH}
N 90 -230 90 -200 {lab=VDDH}
N 70 -200 90 -200 {lab=VDDH}
N 70 -170 70 -130 {lab=VbiasP}
N 30 -200 30 -100 {lab=VbiasP}
N -20 -0 30 -0 {lab=VbiasN}
N -60 -70 -60 -30 {lab=VbiasN}
N -60 -50 -0 -50 {lab=VbiasN}
N -0 -50 -0 -0 {lab=VbiasN}
N -60 30 70 30 {lab=VSS}
N -80 -0 -60 -0 {lab=VSS}
N -80 -0 -80 30 {lab=VSS}
N -80 30 -50 30 {lab=VSS}
N 70 -70 70 -30 {lab=#net1}
N 70 -100 100 -100 {lab=VSS}
N 100 -100 100 30 {lab=VSS}
N 70 30 100 30 {lab=VSS}
N 70 -0 100 -0 {lab=VSS}
N 30 -150 70 -150 {lab=VbiasP}
C {ipin.sym} -60 -70 0 0 {name=p1 lab=VbiasN}
C {ipin.sym} 10 30 3 0 {name=p2 lab=VSS}
C {opin.sym} 70 -150 0 0 {name=p3 lab=VbiasP}
C {ipin.sym} 70 -250 0 0 {name=p4 lab=VDDH}
C {symbols/nfet_03v3.sym} -40 0 0 1 {name=M1
L=1.2u
W=34u
nf=8
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 50 0 0 0 {name=M2
L=1.2u
W=34u
nf=8
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 50 -100 0 0 {name=M3
L=1.2u
W=46u
nf=8
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 50 -200 0 0 {name=M4
L=1.2u
W=73u
nf=16
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
