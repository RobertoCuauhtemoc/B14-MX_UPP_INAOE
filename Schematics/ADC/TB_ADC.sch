v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 680 -90 800 -90 {lab=VBIASN}
C {gnd.sym} 120 -90 0 0 {name=l1 lab=0}
C {gnd.sym} 200 -90 0 0 {name=l2 lab=0}
C {gnd.sym} 280 -90 0 0 {name=l3 lab=0}
C {vsource.sym} 520 -120 0 0 {name=VREFP value=2.65 savecurrent=false}
C {vsource.sym} 440 -120 0 0 {name=VREFN value=0.65 savecurrent=false}
C {vsource.sym} 360 -120 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} 360 -90 0 0 {name=l5 lab=0}
C {gnd.sym} 520 -90 0 0 {name=l6 lab=0}
C {gnd.sym} 440 -90 0 0 {name=l7 lab=0}
C {vsource.sym} 600 -120 0 0 {name=VCLK4 value=1.65 savecurrent=false}
C {gnd.sym} 600 -90 0 0 {name=l9 lab=0}
C {BIAS/BIAS_3v3.sym} 880 -80 0 0 {name=x2}
C {gnd.sym} 800 -70 0 0 {name=l11 lab=0}
C {code.sym} 1040 -150 0 0 {name=MODELS_GF only_toplevel=true value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064_mim.ngspice cap_mim_new
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/smbb000149.ngspice typical
.include /foss/designs/COMPARADOR/comparator_3v3_VSS.spice
.include /foss/designs/BIAS/BIAS_3v3.spice
"}
C {vsource.sym} 120 -120 0 0 {name=VCLK value="PULSE(0 3.3 0 1n 1n 125n 250n)" savecurrent=false}
C {vsource.sym} 200 -120 0 0 {name=VRST value="PWL(0 3.3 2u 3.3 2.01u 0)" savecurrent=false}
C {vsource.sym} 280 -120 0 0 {name=VSTART value="PULSE(0 3.3 3.2u 10n 10n 1.5u 100u)" savecurrent=false}
C {devices/isource.sym} 680 -120 0 0 {name=I0 value=64u}
C {vdd.sym} 360 -150 0 0 {name=l13 lab=VDD}
C {vdd.sym} 520 -150 0 0 {name=l16 lab=VREFP}
C {vdd.sym} 600 -150 0 0 {name=l19 lab=AGND}
C {vdd.sym} 800 -110 3 0 {name=l21 lab=VDD}
C {vdd.sym} 680 -150 0 0 {name=l10 lab=VDD}
C {lab_pin.sym} 680 -90 3 0 {name=p6 sig_type=std_logic lab=VBIASN}
C {vdd.sym} 280 -150 0 0 {name=l4 lab=START}
C {vdd.sym} 200 -150 0 0 {name=l12 lab=RST}
C {vdd.sym} 120 -150 0 0 {name=l22 lab=CLK}
C {lab_pin.sym} 980 -90 3 0 {name=p2 sig_type=std_logic lab=VBIASP}
C {vsource.sym} 40 -120 0 0 {name=VIN value=1.65 savecurrent=false}
C {gnd.sym} 40 -90 0 0 {name=l30 lab=0}
C {vdd.sym} 40 -150 0 0 {name=l31 lab=VIN}
C {vdd.sym} 440 -150 0 0 {name=l8 lab=VREFN}
C {vdd.sym} 280 -740 3 0 {name=l14 lab=VREFN}
C {vdd.sym} 280 -720 3 0 {name=l17 lab=VREFP}
C {vdd.sym} 280 -520 3 0 {name=l18 lab=VDD}
C {vdd.sym} 280 -640 3 0 {name=l20 lab=CLK}
C {vdd.sym} 280 -620 3 0 {name=l23 lab=RST}
C {vdd.sym} 280 -600 3 0 {name=l24 lab=START}
C {lab_pin.sym} 410 -460 3 0 {name=p1 sig_type=std_logic lab=VBIASN}
C {ADC/ADC.sym} 430 -570 0 0 {name=x1}
C {vdd.sym} 280 -540 3 0 {name=l25 lab=VIN}
C {lab_pin.sym} 430 -460 3 0 {name=p3 sig_type=std_logic lab=VBIASP}
C {vdd.sym} 450 -460 2 0 {name=l26 lab=AGND}
C {code.sym} 1040 -310 0 0 {name=NETLIST only_toplevel=false value="
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
write TB_ADC.raw

plot v(RESULT7) v(RESULT6) v(RESULT5) v(RESULT4)
plot v(RESULT3) v(RESULT2) v(RESULT1) v(RESULT0)

plot v(SAMPLE)
plot v(EOC)

.endc
"}
C {lab_pin.sym} 580 -640 2 0 {name=p4 sig_type=std_logic lab=RESULT[7..0]}
C {lab_pin.sym} 580 -620 2 0 {name=p5 sig_type=std_logic lab=SAMPLE}
C {lab_pin.sym} 580 -600 2 0 {name=p7 sig_type=std_logic lab=EOC}
C {gnd.sym} 470 -460 0 0 {name=l15 lab=0}
