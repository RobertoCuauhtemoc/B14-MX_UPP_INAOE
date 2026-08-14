v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 10 130 30 {lab=VDDH}
N 130 10 150 10 {lab=VDDH}
N 150 -20 150 10 {lab=VDDH}
N 130 -20 150 -20 {lab=VDDH}
N 130 -90 130 -50 {lab=VbiasP}
N 90 -120 90 -20 {lab=VbiasP}
N 40 -220 90 -220 {lab=VbiasN}
N 0 -190 0 -150 {lab=VbiasN}
N 0 -170 60 -170 {lab=VbiasN}
N 60 -220 60 -170 {lab=VbiasN}
N 0 -250 130 -250 {lab=VSS}
N -20 -220 0 -220 {lab=VSS}
N -20 -250 -20 -220 {lab=VSS}
N 130 -190 130 -150 {lab=#net1}
N 130 -120 160 -120 {lab=VSS}
N 160 -250 160 -120 {lab=VSS}
N 130 -250 160 -250 {lab=VSS}
N 130 -220 160 -220 {lab=VSS}
N 90 -70 130 -70 {lab=VbiasP}
N 260 -150 260 -120 {lab=VSS}
N 260 -150 300 -150 {lab=VSS}
N 260 -50 260 -20 {lab=VDDH}
N 260 -50 300 -50 {lab=VDDH}
N 260 -250 300 -250 {lab=VSS}
N 260 -250 260 -220 {lab=VSS}
N 260 -220 260 -190 {lab=VSS}
N 260 -190 300 -190 {lab=VSS}
N 300 -220 320 -220 {lab=VSS}
N 320 -250 320 -220 {lab=VSS}
N 300 -250 320 -250 {lab=VSS}
N 260 -90 300 -90 {lab=VSS}
N 260 -120 260 -90 {lab=VSS}
N 300 -50 320 -50 {lab=VDDH}
N 320 -50 320 -20 {lab=VDDH}
N 300 -20 320 -20 {lab=VDDH}
N 260 10 300 10 {lab=VDDH}
N 260 -20 260 10 {lab=VDDH}
N 130 30 260 30 {lab=VDDH}
N 260 10 260 30 {lab=VDDH}
N 160 -250 260 -250 {lab=VSS}
N -140 -190 -100 -190 {lab=VSS}
N -100 -220 -100 -190 {lab=VSS}
N -100 -250 -100 -220 {lab=VSS}
N -140 -250 -100 -250 {lab=VSS}
N -160 -250 -140 -250 {lab=VSS}
N -160 -250 -160 -220 {lab=VSS}
N -160 -220 -140 -220 {lab=VSS}
N -20 -250 0 -250 {lab=VSS}
N -100 -250 -20 -250 {lab=VSS}
N 300 -120 320 -120 {lab=VSS}
N 320 -150 320 -120 {lab=VSS}
N 300 -150 320 -150 {lab=VSS}
N 260 -190 260 -150 {lab=VSS}
N 50 -50 130 -50 {lab=VbiasP}
N 50 10 130 10 {lab=VDDH}
N 50 -20 50 10 {lab=VDDH}
N 370 -50 410 -50 {lab=VDDH}
N 370 -50 370 -20 {lab=VDDH}
N 410 -20 410 10 {lab=VDDH}
N 370 -20 370 10 {lab=VDDH}
N 370 10 410 10 {lab=VDDH}
N 300 10 370 10 {lab=VDDH}
C {ipin.sym} 0 -150 2 1 {name=p1 lab=VbiasN}
C {ipin.sym} 70 -250 3 1 {name=p2 lab=VSS}
C {opin.sym} 130 -70 2 1 {name=p3 lab=VbiasP}
C {ipin.sym} 130 30 2 1 {name=p4 lab=VDDH}
C {symbols/nfet_03v3.sym} 20 -220 2 0 {name=M1
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
C {symbols/nfet_03v3.sym} 110 -220 2 1 {name=M2
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
C {symbols/nfet_03v3.sym} 110 -120 2 1 {name=M3
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
C {symbols/pfet_03v3.sym} 110 -20 2 1 {name=M4
L=1.2u
W=73u
nf=16
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 280 -220 2 1 {name=M5
L=1.2u
W=4.25u
nf=1
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
C {symbols/nfet_03v3.sym} -120 -220 2 0 {name=M6
L=1.2u
W=4.25u
nf=1
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
C {symbols/pfet_03v3.sym} 280 -20 2 1 {name=M7
L=1.2u
W=4.56u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 280 -120 2 1 {name=M8
L=1.2u
W=5.75u
nf=1
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
C {symbols/pfet_03v3.sym} 70 -20 2 0 {name=M9
L=1.2u
W=73u
nf=16
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 390 -20 2 1 {name=M10
L=1.2u
W=4.56u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
