v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {fsm_sar_dig.sym} 720 -520 0 0 {name=A1 model=fsm_sar_model}
C {vsource.sym} 510 -580 1 0 {name=VCLK value="PULSE(0 3.3 0 1n 1n 49n 100n)" savecurrent=false}
C {gnd.sym} 480 -580 1 0 {name=l1 lab=0}
C {vsource.sym} 510 -540 1 0 {name=VRST value="PWL(0 3.3 200n 3.3 201n 0)" savecurrent=false}
C {vsource.sym} 510 -500 1 0 {name=VSTART value="PULSE(0 3.3 320n 1n 1n 150n 10u)" savecurrent=false}
C {vsource.sym} 510 -460 1 0 {name=VCMP value=0 savecurrent=false}
C {gnd.sym} 480 -540 1 0 {name=l2 lab=0}
C {gnd.sym} 480 -500 1 0 {name=l3 lab=0}
C {gnd.sym} 480 -460 1 0 {name=l4 lab=0}
C {lab_pin.sym} 540 -580 1 0 {name=p1 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 540 -540 1 0 {name=p2 sig_type=std_logic lab=RST}
C {lab_pin.sym} 540 -500 1 0 {name=p3 sig_type=std_logic lab=START}
C {lab_pin.sym} 540 -460 1 0 {name=p4 sig_type=std_logic lab=CMP}
C {parax_cap.sym} 910 -580 3 0 {name=CRESULT[7..0]
gnd=0
value=1f
m=1}
C {parax_cap.sym} 910 -540 3 0 {name=CDAC[7..0]
gnd=0
value=1f
m=1}
C {parax_cap.sym} 910 -500 3 0 {name=CSAMPLE
gnd=0
value=1f
m=1}
C {parax_cap.sym} 910 -460 3 0 {name=CEOC
gnd=0
value=1f
m=1}
C {code_shown.sym} 980 -570 0 0 {name=s1 only_toplevel=false value="
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
tran 1n 2u
remzerovec
write test_cosim.raw

.endc
"}
