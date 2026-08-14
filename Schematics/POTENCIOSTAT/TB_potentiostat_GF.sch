v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 910 -920 1710 -520 {flags=graph
y1=2.838266
y2=9.569676
ypos1=0
ypos2=2
divy=10

unity=1
x1=-0.102993
x2=2.03472
divx=5
subdivx=1

ylabmag=1.5
node="Vin Vscan Vout"
color="4 12 10"
dataset=-1
unitx=1
logx=0
logy=0
subdivy=1
xlabmag=1.5}
N 850 -450 850 -440 {
lab=GND}
N 580 -540 660 -540 {
lab=WE}
N 750 -640 810 -640 {
lab=Vout}
N 810 -640 810 -520 {
lab=Vout}
N 630 -640 690 -640 {
lab=WE}
N 630 -640 630 -540 {
lab=WE}
N 640 -500 660 -500 {
lab=AGND}
N 240 -750 270 -750 {
lab=AGND}
N 180 -710 270 -710 {
lab=#net1}
N 220 -710 220 -650 {
lab=#net1}
N 220 -530 250 -530 {
lab=#net2}
N 220 -590 220 -530 {
lab=#net2}
N 400 -510 400 -470 {
lab=#net2}
N 220 -470 400 -470 {
lab=#net2}
N 220 -530 220 -470 {
lab=#net2}
N 150 -690 150 -670 {
lab=GND}
N 180 -620 200 -620 {
lab=GND}
N 510 -540 520 -540 {
lab=WE}
N 310 -790 310 -780 {
lab=VDD}
N 280 -680 310 -680 {
lab=VbiasN}
N 330 -480 330 -460 {
lab=VbiasN}
N 330 -600 330 -580 {
lab=VDD}
N 660 -570 700 -570 {
lab=VbiasN}
N 720 -620 720 -610 {
lab=GND}
N 520 -540 580 -540 {
lab=WE}
N 620 -480 640 -480 {
lab=AGND}
N 640 -500 640 -480 {
lab=AGND}
N 510 -580 510 -540 {
lab=WE}
N 400 -630 400 -550 {
lab=RE}
N 400 -630 440 -630 {
lab=RE}
N 510 -730 510 -680 {
lab=CE}
N 390 -730 510 -730 {
lab=CE}
N 850 -520 850 -510 {
lab=Vout}
N 810 -520 850 -520 {
lab=Vout}
N 540 -820 540 -790 {
lab=VbiasN}
N 590 -840 590 -810 {
lab=VDD}
N 540 -900 540 -880 {
lab=VDD}
N 540 -790 590 -790 {
lab=VbiasN}
N 390 -920 390 -900 {
lab=VDD}
N 390 -840 390 -820 {
lab=GND}
N 80 -620 80 -600 {
lab=GND}
N 80 -710 80 -680 {
lab=Vin}
N 460 -840 460 -820 {
lab=GND}
N 460 -920 460 -900 {
lab=AGND}
N 80 -710 120 -710 {
lab=Vin}
N 690 -950 770 -950 {
lab=Vscan}
N 630 -940 650 -940 {
lab=WE}
N 630 -900 650 -900 {
lab=RE}
N 370 -510 400 -510 {lab=#net2}
N 370 -550 400 -550 {lab=RE}
N 780 -520 810 -520 {lab=Vout}
C {gnd.sym} 850 -440 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 240 -750 0 0 {name=p4 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 280 -680 2 1 {name=p9 sig_type=std_logic lab=VbiasN}
C {devices/lab_pin.sym} 330 -460 3 0 {name=p10 sig_type=std_logic lab=VbiasN}
C {devices/lab_pin.sym} 660 -570 0 0 {name=p11 sig_type=std_logic lab=VbiasN}
C {gnd.sym} 150 -670 0 0 {name=l1 lab=GND}
C {gnd.sym} 180 -620 0 0 {name=l5 lab=GND}
C {gnd.sym} 720 -610 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 620 -480 0 0 {name=p3 sig_type=std_logic lab=AGND}
C {devices/capa.sym} 850 -480 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 850 -520 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {devices/vdd.sym} 590 -840 0 0 {name=l18 lab=VDD}
C {devices/isource.sym} 540 -850 0 0 {name=I0 value=64u}
C {devices/vdd.sym} 540 -900 0 0 {name=l19 lab=VDD}
C {devices/lab_pin.sym} 540 -790 0 0 {name=p22 sig_type=std_logic lab=VbiasN}
C {vsource.sym} 390 -870 0 0 {name=V1 value=3.3}
C {vdd.sym} 390 -920 0 0 {name=l2 lab=VDD}
C {gnd.sym} 390 -820 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 80 -600 0 0 {name=l7 lab=GND}
C {vsource.sym} 460 -870 0 0 {name=V4 value=1.65}
C {gnd.sym} 460 -820 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 460 -920 0 0 {name=p2 sig_type=std_logic lab=AGND}
C {devices/lab_wire.sym} 110 -710 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {devices/code_shown.sym} 180 -1020 0 0 {name=Netlist only_toplevel=false value=
"
.include /foss/designs/Amplificador_prueba.spice
.control
tran 0.10ms 1.5s
write TB_potentiostat.raw
plot V(Vscan) V(Vin) V(Vout)
.endc
"}
C {vdd.sym} 310 -790 0 0 {name=l9 lab=VDD}
C {vdd.sym} 330 -600 0 0 {name=l10 lab=VDD}
C {vdd.sym} 700 -470 2 0 {name=l11 lab=VDD}
C {devices/lab_pin.sym} 510 -710 2 0 {name=p6 sig_type=std_logic lab=CE}
C {devices/lab_pin.sym} 510 -560 2 0 {name=p7 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 400 -610 2 0 {name=p8 sig_type=std_logic lab=RE}
C {gnd.sym} 770 -890 0 0 {name=l12 lab=GND}
C {devices/capa.sym} 770 -920 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vcvs.sym} 690 -920 0 0 {name=E1 value=1}
C {gnd.sym} 690 -890 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 630 -940 0 0 {name=p12 sig_type=std_logic lab=WE}
C {devices/lab_wire.sym} 630 -900 0 0 {name=p13 sig_type=std_logic lab=RE}
C {devices/lab_wire.sym} 740 -950 0 0 {name=p14 sig_type=std_logic lab=Vscan}
C {devices/launcher.sym} 980 -490 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/TB_potentiostat.raw tran"
}
C {gnd.sym} 740 -550 2 0 {name=l14 lab=GND}
C {gnd.sym} 290 -500 0 0 {name=l15 lab=GND}
C {gnd.sym} 350 -700 0 0 {name=l16 lab=GND}
C {gnd.sym} 590 -770 0 0 {name=l17 lab=GND}
C {AMPLIFICADOR/Amplificador_3v3.sym} 330 -610 0 0 {name=x2}
C {AMPLIFICADOR/Amplificador_3v3.sym} 310 -410 0 1 {name=x3}
C {AMPLIFICADOR/Amplificador_3v3.sym} 720 -640 2 1 {name=x4}
C {code.sym} 50 -960 0 0 {name=MODELS_GF only_toplevel=true value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064_mim.ngspice cap_mim_new
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/smbb000149.ngspice typical
"}
C {symbols/ppolyf_u_3k.sym} 150 -710 3 0 {name=R1
W=1e-6
L=4.38e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 220 -620 0 0 {name=R2
W=1e-6
L=4.38e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 720 -640 3 0 {name=R3
W=1e-6
L=3e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {vsource.sym} 80 -650 0 0 {name=V2 value="PWL
+0 0.8
+1 2.5
+2 0.8
"}
C {BIAS/BIAS_3v3.sym} 670 -780 0 0 {name=x5}
C {ECH_sensor.sym} 520 -630 0 0 {name=x1}
