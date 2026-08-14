v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 710 -330 710 -320 {
lab=VREF_P}
N 710 -330 910 -330 {
lab=VREF_P}
N 910 -330 910 -320 {
lab=VREF_P}
N 710 -260 710 -250 {
lab=Out}
N 710 -250 910 -250 {
lab=Out}
N 910 -260 910 -250 {
lab=Out}
N 710 -150 710 -140 {
lab=Out}
N 710 -150 910 -150 {
lab=Out}
N 910 -150 910 -140 {
lab=Out}
N 710 -80 710 -70 {
lab=VREF_N}
N 710 -70 910 -70 {
lab=VREF_N}
N 910 -80 910 -70 {
lab=VREF_N}
N 810 -340 810 -330 {
lab=VREF_P}
N 810 -70 810 -60 {
lab=VREF_N}
N 810 -250 810 -150 {
lab=Out}
N 890 -290 910 -290 {
lab=VSS}
N 710 -290 730 -290 {
lab=VDD}
N 710 -110 730 -110 {
lab=VSS}
N 880 -110 910 -110 {
lab=VDD}
N 500 -130 500 -90 {
lab=#net1}
N 500 -60 510 -60 {
lab=VSS}
N 510 -60 510 -20 {
lab=VSS}
N 500 -20 510 -20 {
lab=VSS}
N 500 -160 510 -160 {
lab=VDD}
N 510 -200 510 -160 {
lab=VDD}
N 500 -200 510 -200 {
lab=VDD}
N 450 -160 460 -160 {
lab=BIT}
N 450 -160 450 -60 {
lab=BIT}
N 450 -60 460 -60 {
lab=BIT}
N 440 -110 450 -110 {
lab=BIT}
N 660 -290 670 -290 {
lab=BIT}
N 660 -290 660 -110 {
lab=BIT}
N 950 -290 960 -290 {
lab=#net1}
N 960 -290 960 -110 {
lab=#net1}
N 950 -110 960 -110 {
lab=#net1}
N 810 -200 870 -200 {lab=Out}
N 450 -290 660 -290 {lab=BIT}
N 450 -290 450 -160 {lab=BIT}
N 960 -110 960 30 {lab=#net1}
N 660 -110 670 -110 {lab=BIT}
N 500 -110 610 -110 {lab=#net1}
N 610 -110 610 20 {lab=#net1}
N 610 20 610 30 {lab=#net1}
N 610 30 960 30 {lab=#net1}
N 500 -30 500 40 {lab=VSS}
N 500 -280 500 -190 {lab=VDD}
C {devices/iopin.sym} 810 -340 3 0 {name=p11 lab=VREF_P}
C {devices/iopin.sym} 810 -60 1 0 {name=p12 lab=VREF_N}
C {devices/iopin.sym} 870 -200 0 0 {name=p13 lab=Out}
C {devices/lab_pin.sym} 890 -290 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 730 -290 2 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 730 -110 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 880 -110 2 1 {name=p17 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 440 -110 2 0 {name=p18 lab=BIT}
C {devices/iopin.sym} 500 -280 0 0 {name=p19 lab=VDD}
C {devices/iopin.sym} 500 40 1 0 {name=p20 lab=VSS}
C {symbols/pfet_03v3.sym} 480 -160 0 0 {name=M4
L=0.6u
W=75u
nf=10
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
C {symbols/nfet_03v3.sym} 480 -60 0 0 {name=M6
L=0.6u
W=50u
nf=10
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
C {symbols/pfet_03v3.sym} 690 -290 0 0 {name=M1
L=0.6u
W=75u
nf=10
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
C {symbols/nfet_03v3.sym} 930 -290 2 0 {name=M5
L=0.6u
W=50u
nf=10
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
C {symbols/pfet_03v3.sym} 930 -110 2 0 {name=M3
L=0.6u
W=75u
nf=10
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
C {symbols/nfet_03v3.sym} 690 -110 0 0 {name=M2
L=0.6u
W=50u
nf=10
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
