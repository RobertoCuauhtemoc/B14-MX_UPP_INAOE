v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 400 -540 1200 -140 {flags=graph
y1=0
y2=100
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
color="4"
node="cmrrdb"}
T {TB_CMRR_3v3 - CMRR (AMP V2). Spec: >= 80 dB. Medido .spice: 92.5 dB.
DOS instancias identicas, mismo punto de operacion (servo 100MEG/1F):
xdm (arriba) = ganancia DIFERENCIAL: ac 1 solo en VinP.
xcm (abajo) = ganancia MODO COMUN: Vcm lleva el ac 1 a VinP, y el 1F del
servo se referencia a vincm (no a GND) para acoplar el mismo ac a VinN.
CMRR(f) = vdb(VoutDM) - vdb(VoutCM).} -740 -640 0 0 0.3 0.3 {}
N -130 -80 -130 -60 {lab=VDD}
N -130 0 -130 20 {lab=GND}
N 240 -120 340 -120 {lab=VoutDM}
N 340 -60 340 -50 {lab=GND}
N 230 0 290 0 {lab=VoutDM}
N 290 -120 290 0 {lab=VoutDM}
N 80 0 170 0 {lab=#net1}
N 80 -100 80 0 {lab=#net1}
N 80 -100 120 -100 {lab=#net1}
N 80 0 80 10 {lab=#net1}
N 80 70 80 80 {lab=GND}
N 0 80 0 90 {lab=GND}
N 0 0 0 20 {lab=#net2}
N 0 -140 0 -60 {lab=vindm}
N 0 -140 120 -140 {lab=vindm}
N 60 -330 60 -310 {lab=VDD}
N 0 -370 0 -360 {lab=VDD}
N 0 -300 0 -290 {lab=VbiasN}
N -20 -290 0 -290 {lab=VbiasN}
N 150 -50 160 -50 {lab=VbiasN}
N 160 -70 160 -50 {lab=VbiasN}
N 0 -290 60 -290 {lab=VbiasN}
N 200 -90 200 -70 {lab=GND}
N 240 380 340 380 {lab=VoutCM}
N 340 440 340 450 {lab=GND}
N 230 500 290 500 {lab=VoutCM}
N 290 380 290 500 {lab=VoutCM}
N 80 500 170 500 {lab=#net3}
N 80 400 80 500 {lab=#net3}
N 80 400 120 400 {lab=#net3}
N 80 500 80 510 {lab=#net3}
N 80 570 80 580 {lab=vincm}
N 0 360 120 360 {lab=vincm}
N 0 420 0 430 {lab=GND}
N 150 450 160 450 {lab=VbiasN}
N 160 430 160 450 {lab=VbiasN}
N 200 410 200 430 {lab=GND}
C {vsource.sym} -130 -30 0 0 {name=V1 value=3.3}
C {vdd.sym} -130 -80 0 0 {name=l1 lab=VDD}
C {gnd.sym} -130 20 0 0 {name=l2 lab=GND}
C {capa.sym} 340 -90 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 340 -50 0 0 {name=l3 lab=GND}
C {res.sym} 200 0 3 0 {name=R1
value=100MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} 80 40 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 80 80 0 0 {name=l4 lab=GND}
C {vsource.sym} 0 -30 0 0 {name=V2 value="dc 0 ac 1 0"}
C {vsource.sym} 0 50 0 0 {name=V3 value=1.65}
C {gnd.sym} 0 90 0 0 {name=l5 lab=GND}
C {capa.sym} 340 410 0 0 {name=C1c
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 340 450 0 0 {name=l3c lab=GND}
C {res.sym} 200 500 3 0 {name=R1c
value=100MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} 80 540 0 0 {name=C2c
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 80 580 0 0 {name=p6 sig_type=std_logic lab=vincm}
C {vsource.sym} 0 390 0 0 {name=Vcm value="dc 1.65 ac 1 0"}
C {gnd.sym} 0 430 0 0 {name=l5c lab=GND}
C {devices/code_shown.sym} -740 -410 0 0 {name=ngspice only_toplevel=false value="
.control
save all
op
print v(VoutDM) v(VoutCM)
ac dec 100 1 1G
let admdb = vdb(voutdm)
let acmdb = vdb(voutcm)
let cmrrdb = admdb - acmdb
meas ac adm_dc find admdb at=1
meas ac acm_dc find acmdb at=1
meas ac cmrr_dc find cmrrdb at=1
meas ac cmrr_1k find cmrrdb at=1k
meas ac cmrr_100k find cmrrdb at=100k
meas ac cmrr_1meg find cmrrdb at=1meg
wrdata /foss/designs/CASS1/GF180_MIGRATED/V3P3/cmrr_sch.txt admdb acmdb cmrrdb
plot cmrrdb admdb acmdb xlog
.endc
"}
C {lab_wire.sym} 320 -120 0 0 {name=p1 sig_type=std_logic lab=VoutDM}
C {lab_wire.sym} 50 -140 0 0 {name=p2 sig_type=std_logic lab=vindm}
C {lab_wire.sym} 320 380 0 0 {name=p1c sig_type=std_logic lab=VoutCM}
C {lab_wire.sym} 50 360 0 0 {name=p2c sig_type=std_logic lab=vincm}
C {vdd.sym} 160 -170 0 0 {name=l6 lab=VDD}
C {vdd.sym} 160 330 0 0 {name=l6c lab=VDD}
C {vdd.sym} 60 -330 0 0 {name=l7 lab=VDD}
C {devices/isource.sym} 0 -330 0 0 {name=I0 value=64u}
C {vdd.sym} 0 -370 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} -20 -290 0 0 {name=p3 sig_type=std_logic lab=VbiasN}
C {devices/lab_pin.sym} 150 -50 0 0 {name=p4 sig_type=std_logic lab=VbiasN}
C {devices/lab_pin.sym} 150 450 0 0 {name=p4c sig_type=std_logic lab=VbiasN}
C {devices/gnd.sym} 200 -70 0 0 {name=lvss1 lab=GND}
C {devices/gnd.sym} 200 430 0 0 {name=lvss1c lab=GND}
C {devices/gnd.sym} 60 -270 0 0 {name=lvss2 lab=GND}
C {AMPLIFICADOR/Amplificador_3v3.sym} 180 500 0 0 {name=x1}
C {AMPLIFICADOR/Amplificador_3v3.sym} 180 0 0 0 {name=x3}
C {BIAS/BIAS_3v3.sym} 140 -280 0 0 {name=x2}
C {code.sym} 550 0 0 0 {name=MODELS_GF only_toplevel=true value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064_mim.ngspice cap_mim_new
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/smbb000149.ngspice typical
"}
