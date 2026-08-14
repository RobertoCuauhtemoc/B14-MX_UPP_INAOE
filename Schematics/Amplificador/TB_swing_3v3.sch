v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 400 -540 1200 -140 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4"
node="vout"}
T {TB_SWING_3v3 - Excursion de salida (AMP V2)
Inversor ganancia -1 (Rin=Rfb=50k) alrededor de AGND=1.65V = uso real
en el DAC R-2R (R_th=2R=50k). Vout_ideal = 3.3 - Vsrc.
Medido .spice: err -0.88/-1.14/-1.40 mV en Vout=0.65/1.65/2.65 (spec <=10mV);
rango casi rail-to-rail 7.5mV..3.286V. V2=0 actua de corto (INP=1.65 fijo).} -740 -640 0 0 0.3 0.3 {}
N -130 -80 -130 -60 {lab=VDD}
N -130 0 -130 20 {lab=GND}
N 240 -120 340 -120 {lab=Vout}
N 340 -60 340 -50 {lab=GND}
N 230 0 290 0 {lab=Vout}
N 290 -120 290 0 {lab=Vout}
N 80 0 170 0 {lab=#net1}
N 80 -100 80 0 {lab=#net1}
N 80 -100 120 -100 {lab=#net1}
N 80 0 80 10 {lab=#net1}
N 80 70 80 80 {lab=vsrc}
N 80 140 80 150 {lab=GND}
N 0 80 0 90 {lab=GND}
N 0 0 0 20 {lab=#net2}
N 0 -140 0 -60 {lab=AGND}
N 0 -140 120 -140 {lab=AGND}
N 60 -330 60 -310 {lab=VDD}
N 0 -370 0 -360 {lab=VDD}
N 0 -300 0 -290 {lab=VbiasN}
N -20 -290 0 -290 {lab=VbiasN}
N 150 -50 160 -50 {lab=VbiasN}
N 160 -70 160 -50 {lab=VbiasN}
N 0 -290 60 -290 {lab=VbiasN}
N 200 -90 200 -70 {lab=GND}
C {vsource.sym} -130 -30 0 0 {name=V1 value=3.3}
C {vdd.sym} -130 -80 0 0 {name=l1 lab=VDD}
C {gnd.sym} -130 20 0 0 {name=l2 lab=GND}
C {capa.sym} 340 -90 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 340 -50 0 0 {name=l3 lab=GND}
C {res.sym} 200 0 3 0 {name=Rfb
value=50k
footprint=1206
device=resistor
m=1}
C {res.sym} 80 40 0 0 {name=Rin
value=50k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 80 110 0 0 {name=Vsrc value=1.65}
C {gnd.sym} 80 150 0 0 {name=l4 lab=GND}
C {vsource.sym} 0 -30 0 0 {name=V2 value="dc 0"}
C {vsource.sym} 0 50 0 0 {name=V3 value=1.65}
C {gnd.sym} 0 90 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -1060 -460 0 0 {name=ngspice only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical

.control
save all
dc Vsrc 0 3.3 5m
let videal = 3.3 - v(vsrc)
let verr = v(vout) - videal
meas dc err_vout_065 find verr when v(vsrc)=2.65
meas dc err_vout_165 find verr when v(vsrc)=1.65
meas dc err_vout_265 find verr when v(vsrc)=0.65
meas dc vout_min min v(vout)
meas dc vout_max max v(vout)
wrdata /foss/designs/CASS1/GF180_MIGRATED/V3P3/swing_sweep_sch.txt v(vsrc) v(vout) verr
plot v(vout) videal vs v(vsrc)
plot verr vs v(vsrc) ylimit -10m 10m
.endc
"}
C {lab_wire.sym} 320 -120 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 50 -140 0 0 {name=p2 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 80 80 0 0 {name=p7 sig_type=std_logic lab=vsrc}
C {vdd.sym} 160 -170 0 0 {name=l6 lab=VDD}
C {vdd.sym} 60 -330 0 0 {name=l7 lab=VDD}
C {devices/isource.sym} 0 -330 0 0 {name=I0 value=64u}
C {vdd.sym} 0 -370 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} -20 -290 0 0 {name=p3 sig_type=std_logic lab=VbiasN}
C {devices/lab_pin.sym} 150 -50 0 0 {name=p4 sig_type=std_logic lab=VbiasN}
C {devices/gnd.sym} 200 -70 0 0 {name=lvss1 lab=GND}
C {devices/gnd.sym} 60 -270 0 0 {name=lvss2 lab=GND}
C {AMPLIFICADOR/Amplificador_3v3.sym} 180 0 0 0 {name=x1}
C {BIAS/BIAS_3v3.sym} 140 -280 0 0 {name=x2}
