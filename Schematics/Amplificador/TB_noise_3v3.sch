v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 400 -540 1200 -140 {flags=graph
y1=1e-9
y2=1e-6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=7
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=1
color="4"
node="onoise_spectrum"}
T {TB_NOISE_3v3 - Ruido equivalente de entrada (AMP V2)
Mismo seguidor que TB_offset_3v3; V2 vuelve a ser fuente AC (referencia del
analisis NOISE). Banda 1Hz-10MHz. Salidas: espectro (V/sqrt(Hz)) + integrado.
Sin spec explicita en la hoja: caracterizacion para el presupuesto del SAR
(comparar vn_rms vs LSB/2 = 3.9mV del DAC de 8 bits).} -740 -640 0 0 0.3 0.3 {}
N -130 -80 -130 -60 {lab=VDD}
N -130 0 -130 20 {lab=GND}
N 240 -120 340 -120 {lab=Vout}
N 340 -60 340 -50 {lab=GND}
N 100 -100 120 -100 {lab=Vout}
N 0 80 0 90 {lab=GND}
N 0 0 0 20 {lab=#net1}
N 0 -140 0 -60 {lab=Vin}
N 0 -140 120 -140 {lab=Vin}
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
C {vsource.sym} 0 -30 0 0 {name=V2 value="dc 0 ac 1"}
C {vsource.sym} 0 50 0 0 {name=V3 value=1.65}
C {gnd.sym} 0 90 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -740 -410 0 0 {name=ngspice only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical

.control
save all
op
* Ruido referido a la entrada: fuente V2, salida v(vout); en seguidor ganancia=1
noise v(vout) V2 dec 100 1 10meg
* noise genera 2 plots: noise1 = espectro, noise2 = totales integrados
setplot noise2
print inoise_total onoise_total
let vn_rms_uV = sqrt(onoise_total)*1e6
print vn_rms_uV
setplot noise1
wrdata /foss/designs/CASS1/GF180_MIGRATED/V3P3/noise_spectrum_sch.txt onoise_spectrum inoise_spectrum
plot onoise_spectrum inoise_spectrum loglog
.endc
"}
C {lab_wire.sym} 320 -120 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 50 -140 0 0 {name=p2 sig_type=std_logic lab=Vin
}
C {vdd.sym} 160 -170 0 0 {name=l6 lab=VDD}
C {vdd.sym} 60 -330 0 0 {name=l7 lab=VDD}
C {devices/isource.sym} 0 -330 0 0 {name=I0 value=64u}
C {vdd.sym} 0 -370 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} -20 -290 0 0 {name=p3 sig_type=std_logic lab=VbiasN}
C {devices/lab_pin.sym} 150 -50 0 0 {name=p4 sig_type=std_logic lab=VbiasN}
C {devices/lab_pin.sym} 100 -100 0 0 {name=p5 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 200 -70 0 0 {name=lvss1 lab=GND}
C {devices/gnd.sym} 60 -270 0 0 {name=lvss2 lab=GND}
C {AMPLIFICADOR/Amplificador_3v3.sym} 180 0 0 0 {name=x1}
C {BIAS/BIAS_3v3.sym} 140 -280 0 0 {name=x2}
