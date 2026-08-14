v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1050 -880 -250 -480 {flags=graph
y1=2.28
y2=4.48
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.01536
x2=0.05376
divx=6
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="OUT"
color=15
dataset=-1
unitx=1
logx=0
logy=0
}
N -830 -350 -830 -330 {
lab=GND}
N -770 -350 -770 -330 {
lab=GND}
N -690 -350 -690 -330 {
lab=GND}
N -610 -350 -610 -330 {
lab=GND}
N -540 -350 -540 -330 {
lab=GND}
N -470 -350 -470 -330 {
lab=GND}
N -390 -350 -390 -330 {
lab=GND}
N -310 -350 -310 -330 {
lab=GND}
N -830 -450 -830 -410 {
lab=B7}
N -770 -450 -770 -410 {
lab=B6}
N -690 -450 -690 -410 {
lab=B5}
N -610 -450 -610 -410 {
lab=B4}
N -540 -450 -540 -410 {
lab=B3}
N -470 -450 -470 -410 {
lab=B2}
N -390 -450 -390 -410 {
lab=B1}
N -310 -450 -310 -410 {
lab=B0}
N -1557.5 -670 -1557.5 -645 {
lab=GND}
N -1557.5 -755 -1557.5 -730 {
lab=VDD}
N -1620 -730 -1620 -450 {
lab=VDD}
N -1620 -730 -1560 -730 {
lab=VDD}
N -1620 -450 -1230 -450 {
lab=VDD}
N -1320 -410 -1230 -410 {
lab=GND}
N -1290 -430 -1230 -430 {
lab=VbiasN}
N -1330 -850 -1330 -730 {
lab=#net1}
N -1330 -910 -1250 -910 {
lab=GND}
N -1300 -750 -1300 -730 {
lab=#net2}
N -1200 -520 -1200 -500 {
lab=GND}
N -1440 -680 -1410 -680 {
lab=B7}
N -1440 -660 -1410 -660 {
lab=B6}
N -1440 -640 -1410 -640 {
lab=B5}
N -1440 -620 -1410 -620 {
lab=B4}
N -1440 -600 -1410 -600 {
lab=B3}
N -1440 -580 -1410 -580 {
lab=B2}
N -1440 -560 -1410 -560 {
lab=B1}
N -1440 -540 -1410 -540 {
lab=B0}
N -1100 -600 -1100 -590 {
lab=VDD}
N -1100 -530 -1100 -520 {
lab=VbiasN}
N -1560 -730 -1360 -730 {lab=VDD}
N -1360 -490 -1360 -470 {lab=GND}
N -1330 -490 -1330 -480 {lab=#net3}
N -1330 -420 -1330 -400 {lab=GND}
N -1330 -410 -1320 -410 {lab=GND}
N -1300 -490 -1300 -430 {lab=VbiasN}
N -1300 -430 -1290 -430 {lab=VbiasN}
N -1250 -610 -1200 -610 {lab=OUT}
N -1200 -610 -1200 -580 {lab=OUT}
N -1300 -810 -1240 -810 {lab=GND}
C {devices/isource.sym} -1100 -560 0 0 {name=I0 value=64u}
C {devices/lab_pin.sym} -1100 -600 0 0 {name=p61 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -1100 -520 0 0 {name=p62 sig_type=std_logic lab=VbiasN}
C {devices/lab_pin.sym} -1300 -460 2 0 {name=p63 sig_type=std_logic lab=VbiasN}
C {devices/vsource.sym} -310 -380 0 0 {name=V1 value="PULSE(3.3 0 0 1n 1n 2.7u 5.4u)"}
C {devices/vsource.sym} -390 -380 0 0 {name=V2 value="PULSE(3.3 0 0 1n 1n 5.4u 10.8u)"}
C {devices/vsource.sym} -470 -380 0 0 {name=V3 value="PULSE(3.3 0 0 1n 1n 10.8u 21.6u)"}
C {devices/vsource.sym} -540 -380 0 0 {name=V4 value="PULSE(3.3 0 0 1n 1n 21.6u 43.2u)"}
C {devices/vsource.sym} -610 -380 0 0 {name=V5 value="PULSE(3.3 0 0 1n 1n 43.2u 86.4u)"}
C {devices/vsource.sym} -690 -380 0 0 {name=V6 value="PULSE(3.3 0 0 1n 1n 86.4u 172.8u)"}
C {devices/vsource.sym} -770 -380 0 0 {name=V7 value="PULSE(3.3 0 0 1n 1n 172.8u 345.6u)"}
C {devices/vsource.sym} -830 -380 0 0 {name=V8 value="PULSE(3.3 0 0 1n 1n 345.6u 691.24u)"}
C {devices/gnd.sym} -830 -330 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -770 -330 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -690 -330 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -610 -330 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -540 -330 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -470 -330 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -390 -330 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} -310 -330 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -830 -450 0 0 {name=p3 sig_type=std_logic lab=B7}
C {devices/lab_pin.sym} -770 -450 0 0 {name=p4 sig_type=std_logic lab=B6}
C {devices/lab_pin.sym} -690 -450 0 0 {name=p5 sig_type=std_logic lab=B5}
C {devices/lab_pin.sym} -610 -450 0 0 {name=p6 sig_type=std_logic lab=B4}
C {devices/lab_pin.sym} -540 -450 0 0 {name=p7 sig_type=std_logic lab=B3}
C {devices/lab_pin.sym} -470 -450 0 0 {name=p8 sig_type=std_logic lab=B2}
C {devices/lab_pin.sym} -390 -450 0 0 {name=p10 sig_type=std_logic lab=B1}
C {devices/lab_pin.sym} -310 -450 0 0 {name=p9 sig_type=std_logic lab=B0}
C {devices/simulator_commands_shown.sym} -2110 -895 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false

value="
.control
save all

display
print v(agnd)

* Simulación transitoria
tran 1u 5m

write DAC8_gf180.raw

* Código mínimo y máximo
meas tran v_code0 FIND v(OUT) AT=2u
meas tran v_code255 FIND v(OUT) AT=1.38m

* Rango y resolución
let span = v_code255 - v_code0
let lsb_avg = span / 255

print v_code0 v_code255 span lsb_avg

* Error de offset (referencia = 1.5 V)
let offset_error = abs(v_code0 - 0.65)

* Error de ganancia (referencia = 3.3 V)
let gain_error = abs(v_code255 - 2.65)

print offset_error gain_error

wrdata dac8_gf180_out.txt v(OUT)
plot v(OUT)

.endc
"}
C {devices/vsource.sym} -1557.5 -700 0 0 {name=V14 value=3.3}
C {devices/gnd.sym} -1557.5 -647.5 0 0 {name=l15 lab=GND}
C {devices/vdd.sym} -1557.5 -755 0 0 {name=l16 lab=VDD}
C {devices/lab_pin.sym} -1200 -610 2 0 {name=p23 sig_type=std_logic lab=OUT}
C {devices/gnd.sym} -1360 -470 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} -1440 -540 0 0 {name=p11 sig_type=std_logic lab=B0}
C {devices/lab_pin.sym} -1440 -560 0 0 {name=p24 sig_type=std_logic lab=B1}
C {devices/lab_pin.sym} -1440 -580 0 0 {name=p25 sig_type=std_logic lab=B2}
C {devices/lab_pin.sym} -1440 -600 0 0 {name=p26 sig_type=std_logic lab=B3}
C {devices/lab_pin.sym} -1440 -620 0 0 {name=p27 sig_type=std_logic lab=B4}
C {devices/lab_pin.sym} -1440 -640 0 0 {name=p28 sig_type=std_logic lab=B5}
C {devices/lab_pin.sym} -1440 -660 0 0 {name=p29 sig_type=std_logic lab=B6}
C {devices/lab_pin.sym} -1440 -680 0 0 {name=p30 sig_type=std_logic lab=B7}
C {devices/gnd.sym} -1240 -810 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} -1330 -880 2 0 {name=V16 value=2.65}
C {devices/gnd.sym} -1250 -910 0 0 {name=l23 lab=GND}
C {devices/vsource.sym} -1330 -450 0 0 {name=V17 value=1.65}
C {devices/gnd.sym} -1330 -400 0 0 {name=l24 lab=GND}
C {devices/launcher.sym} -990 -900 0 0 {name=h1
descr="Netlist & sim"
tclcommand="xschem netlist; xschem simulate"

}
C {devices/launcher.sym} -750 -900 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/DAC8_gf180.raw tran"
}
C {devices/gnd.sym} -1200 -500 0 0 {name=l11 lab=GND}
C {devices/capa.sym} -1200 -550 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -1300 -780 2 0 {name=V9 value=0.65}
C {DAC/DAC8BR2R_3v3.sym} -1250 -510 0 0 {name=x1}
C {code.sym} -1620 -960 0 0 {name=MODELS_GF only_toplevel=true value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064_mim.ngspice cap_mim_new
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/smbb000149.ngspice typical
"}
C {BIAS/BIAS_3v3.sym} -1150 -420 0 0 {name=x2}
