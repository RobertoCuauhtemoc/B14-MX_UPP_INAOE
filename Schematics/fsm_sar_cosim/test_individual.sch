v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 -400 110 -400 {lab=VBIASN}
C {gnd.sym} -570 -400 0 0 {name=l1 lab=0}
C {gnd.sym} -490 -400 0 0 {name=l2 lab=0}
C {gnd.sym} -410 -400 0 0 {name=l3 lab=0}
C {parax_cap.sym} 210 200 3 0 {name=CRESULT[7..0]
gnd=0
value=1f
m=1}
C {parax_cap.sym} 210 240 3 0 {name=CSAMPLE
gnd=0
value=1f
m=1}
C {parax_cap.sym} 210 280 3 0 {name=CEOC
gnd=0
value=1f
m=1}
C {code_shown.sym} 750 -50 0 0 {name=s1 only_toplevel=false value="
.control

pre_set auto_bridge_d_in = ( 
\\".model auto_adc adc_bridge( \\
in_low='0.9 * 3.3 / 2' in_high='1.1 * 3.3 / 2' \\
rise_delay=1e-11 fall_delay=1e-11 )\\" 
\\"auto_bridge%d [ %s ] [ %s ] auto_adc\\" )

pre_set auto_bridge_d_out = ( \\
\\".model auto_dac dac_bridge( \\
out_low=0 out_high=3.3 \\
t_rise=1e-11 t_fall=1e-11 )\\" \\
\\"auto_bridge%d [ %s ] [ %s ] auto_dac\\" )

save all
tran 10n 20u
remzerovec
write test_cosim_individual.raw
plot v(VDAC) v(VIN)
plot v(CMP)

.endc
"}
C {vsource.sym} -170 -430 0 0 {name=VREFP value=2.65 savecurrent=false}
C {vsource.sym} -250 -430 0 0 {name=VREFN value=0.65 savecurrent=false}
C {vsource.sym} -330 -430 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -330 -400 0 0 {name=l5 lab=0}
C {gnd.sym} -170 -400 0 0 {name=l6 lab=0}
C {gnd.sym} -250 -400 0 0 {name=l7 lab=0}
C {gnd.sym} 250 30 0 0 {name=l8 lab=0}
C {vsource.sym} -90 -430 0 0 {name=VCLK4 value=1.65 savecurrent=false}
C {gnd.sym} -90 -400 0 0 {name=l9 lab=0}
C {BIAS/BIAS_3v3.sym} 190 -390 0 0 {name=x2}
C {gnd.sym} 110 -380 0 0 {name=l11 lab=0}
C {lab_pin.sym} 360 -90 2 0 {name=p5 sig_type=std_logic lab=VDAC}
C {code.sym} 350 -460 0 0 {name=MODELS_GF only_toplevel=true value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064_mim.ngspice cap_mim_new
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/smbb000149.ngspice typical
"}
C {vsource.sym} -570 -430 0 0 {name=VCLK value="PULSE(0 3.3 0 1n 1n 499n 1u)" savecurrent=false}
C {vsource.sym} -490 -430 0 0 {name=VRST value="PWL(0 3.3 2u 3.3 2.01u 0)" savecurrent=false}
C {vsource.sym} -410 -430 0 0 {name=VSTART value="PULSE(0 3.3 3.2un 10n 10n 1.5u 100u)" savecurrent=false}
C {DAC/DAC8BR2R_3v3.sym} 360 10 0 0 {name=x1}
C {devices/isource.sym} -10 -430 0 0 {name=I0 value=64u}
C {vdd.sym} -330 -460 0 0 {name=l13 lab=VDD}
C {vdd.sym} 250 -210 0 0 {name=l14 lab=VDD}
C {vdd.sym} -250 -460 0 0 {name=l15 lab=VREFN}
C {vdd.sym} -170 -460 0 0 {name=l16 lab=VREFP}
C {vdd.sym} 310 -210 0 0 {name=l17 lab=VREFN}
C {vdd.sym} 280 -210 0 0 {name=l18 lab=VREFP}
C {vdd.sym} -90 -460 0 0 {name=l19 lab=AGND}
C {vdd.sym} 280 30 2 0 {name=l20 lab=AGND}
C {vdd.sym} 110 -420 3 0 {name=l21 lab=VDD}
C {vdd.sym} -10 -460 0 0 {name=l10 lab=VDD}
C {lab_pin.sym} -10 -400 3 0 {name=p6 sig_type=std_logic lab=VBIASN}
C {vdd.sym} -410 -460 0 0 {name=l4 lab=START}
C {vdd.sym} -490 -460 0 0 {name=l12 lab=RST}
C {vdd.sym} -570 -460 0 0 {name=l22 lab=CLK}
C {vdd.sym} -160 -60 3 0 {name=l23 lab=CLK}
C {vdd.sym} -160 -20 3 0 {name=l24 lab=RST}
C {vdd.sym} -160 20 3 0 {name=l25 lab=START}
C {lab_pin.sym} 310 30 3 0 {name=p1 sig_type=std_logic lab=VBIASN}
C {lab_pin.sym} 290 -400 3 0 {name=p2 sig_type=std_logic lab=VBIASP}
C {fsm_sar_cosim/fsm_sar_dig_individual.sym} 20 0 0 0 {name=A1 model=fsm_sar_model}
C {COMPARADOR/comparator_3v3.sym} -220 310 0 0 {name=x3}
C {vdd.sym} -240 190 0 0 {name=l29 lab=VDD}
C {lab_pin.sym} -280 250 0 0 {name=p3 sig_type=std_logic lab=VDAC}
C {vsource.sym} -650 -430 0 0 {name=VIN value=2.65 savecurrent=false}
C {gnd.sym} -650 -400 0 0 {name=l30 lab=0}
C {vdd.sym} -650 -460 0 0 {name=l31 lab=VIN}
C {vdd.sym} -280 220 3 0 {name=l32 lab=VIN}
C {lab_pin.sym} -220 280 3 0 {name=p4 sig_type=std_logic lab=VBIASP}
C {lab_pin.sym} -240 290 3 0 {name=p7 sig_type=std_logic lab=VBIASN}
C {lab_pin.sym} -160 240 3 0 {name=p8 sig_type=std_logic lab=CMP}
