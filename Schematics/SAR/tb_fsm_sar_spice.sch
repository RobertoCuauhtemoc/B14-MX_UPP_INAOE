v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -530 -680 -410 -680 {lab=VBIASN}
C {gnd.sym} -1090 -680 0 0 {name=l1 lab=0}
C {gnd.sym} -1010 -680 0 0 {name=l2 lab=0}
C {gnd.sym} -930 -680 0 0 {name=l3 lab=0}
C {parax_cap.sym} -310 -60 3 0 {name=CSAMPLE
gnd=0
value=1f
m=1}
C {parax_cap.sym} -310 -100 3 0 {name=CEOC
gnd=0
value=1f
m=1}
C {code.sym} -40 -730 0 0 {name=NETLIST only_toplevel=false value="
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
write test_cosim_spice.raw
plot v(VDAC) v(VIN)
plot v(CMP)

.endc
"}
C {vsource.sym} -690 -710 0 0 {name=VREFP value=2.65 savecurrent=false}
C {vsource.sym} -770 -710 0 0 {name=VREFN value=0.65 savecurrent=false}
C {vsource.sym} -850 -710 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -850 -680 0 0 {name=l5 lab=0}
C {gnd.sym} -690 -680 0 0 {name=l6 lab=0}
C {gnd.sym} -770 -680 0 0 {name=l7 lab=0}
C {gnd.sym} -270 -250 0 0 {name=l8 lab=0}
C {vsource.sym} -610 -710 0 0 {name=VCLK4 value=1.65 savecurrent=false}
C {gnd.sym} -610 -680 0 0 {name=l9 lab=0}
C {BIAS/BIAS_3v3.sym} -330 -670 0 0 {name=x2}
C {gnd.sym} -410 -660 0 0 {name=l11 lab=0}
C {lab_pin.sym} -160 -370 2 0 {name=p5 sig_type=std_logic lab=VDAC}
C {code.sym} -170 -730 0 0 {name=MODELS_GF only_toplevel=true value="
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
.include /foss/designs/SAR/fsm_sar.spice
"}
C {vsource.sym} -1090 -710 0 0 {name=VCLK value="PULSE(0 3.3 0 1n 1n 250n 500n)" savecurrent=false}
C {vsource.sym} -1010 -710 0 0 {name=VRST value="PWL(0 3.3 2u 3.3 2.01u 0)" savecurrent=false}
C {vsource.sym} -930 -710 0 0 {name=VSTART value="PULSE(0 3.3 3.2un 10n 10n 1.5u 100u)" savecurrent=false}
C {DAC/DAC8BR2R_3v3.sym} -160 -270 0 0 {name=x1}
C {devices/isource.sym} -530 -710 0 0 {name=I0 value=64u}
C {vdd.sym} -850 -740 0 0 {name=l13 lab=VDD}
C {vdd.sym} -270 -490 0 0 {name=l14 lab=VDD}
C {vdd.sym} -770 -740 0 0 {name=l15 lab=VREFN}
C {vdd.sym} -690 -740 0 0 {name=l16 lab=VREFP}
C {vdd.sym} -210 -490 0 0 {name=l17 lab=VREFN}
C {vdd.sym} -240 -490 0 0 {name=l18 lab=VREFP}
C {vdd.sym} -610 -740 0 0 {name=l19 lab=AGND}
C {vdd.sym} -240 -250 2 0 {name=l20 lab=AGND}
C {vdd.sym} -410 -700 3 0 {name=l21 lab=VDD}
C {vdd.sym} -530 -740 0 0 {name=l10 lab=VDD}
C {lab_pin.sym} -530 -680 3 0 {name=p6 sig_type=std_logic lab=VBIASN}
C {vdd.sym} -930 -740 0 0 {name=l4 lab=START}
C {vdd.sym} -1010 -740 0 0 {name=l12 lab=RST}
C {vdd.sym} -1090 -740 0 0 {name=l22 lab=CLK}
C {vdd.sym} -620 -270 3 0 {name=l23 lab=CLK}
C {vdd.sym} -620 -250 3 0 {name=l24 lab=RST}
C {vdd.sym} -620 -230 3 0 {name=l25 lab=START}
C {lab_pin.sym} -210 -250 3 0 {name=p1 sig_type=std_logic lab=VBIASN}
C {lab_pin.sym} -230 -680 3 0 {name=p2 sig_type=std_logic lab=VBIASP}
C {vdd.sym} -700 -130 0 0 {name=l29 lab=VDD}
C {lab_pin.sym} -740 -100 0 0 {name=p3 sig_type=std_logic lab=VDAC}
C {vsource.sym} -1170 -710 0 0 {name=VIN value=1.65 savecurrent=false}
C {gnd.sym} -1170 -680 0 0 {name=l30 lab=0}
C {vdd.sym} -1170 -740 0 0 {name=l31 lab=VIN}
C {vdd.sym} -740 -60 3 0 {name=l32 lab=VIN}
C {lab_pin.sym} -680 -40 3 0 {name=p4 sig_type=std_logic lab=VBIASP}
C {lab_pin.sym} -700 -30 3 0 {name=p7 sig_type=std_logic lab=VBIASN}
C {lab_pin.sym} -620 -80 3 0 {name=p8 sig_type=std_logic lab=CMP}
C {COMPARADOR/comparator_3v3_VSS.sym} -640 60 0 0 {name=x3}
C {gnd.sym} -660 -50 0 0 {name=l26 lab=0}
C {vdd.sym} -620 -440 3 0 {name=l27 lab=VDD}
C {gnd.sym} -620 -420 1 0 {name=l28 lab=0}
C {fsm_sar.sym} -470 -270 0 0 {name=x4}
C {parax_cap.sym} -310 -80 3 0 {name=CRESULT1[7]
gnd=0
value=1f
m=1}
