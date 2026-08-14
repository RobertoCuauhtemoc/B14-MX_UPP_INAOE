v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 100 100 620 {lab=#net1}
N 70 100 100 100 {lab=#net1}
N -600 410 -570 410 {lab=#net1}
N -600 410 -600 620 {lab=#net1}
N -600 620 100 620 {lab=#net1}
C {DAC/DAC8BR2R_3v3.sym} 70 200 0 0 {name=x1}
C {fsm_sar_cosim/fsm_sar_dig_individual.sym} -270 190 0 0 {name=A1 model=fsm_sar_model}
C {ipin.sym} -450 130 0 0 {name=p2 lab=CLK}
C {ipin.sym} -450 170 0 0 {name=p6 lab=RST}
C {ipin.sym} -450 210 0 0 {name=p9 lab=START}
C {ipin.sym} -40 -20 1 0 {name=p10 lab=VDD}
C {ipin.sym} 20 -20 1 0 {name=p11 lab=VREFN}
C {ipin.sym} -10 -20 1 0 {name=p12 lab=VREFP}
C {ipin.sym} 20 220 3 0 {name=p1 lab=VBIASN}
C {ipin.sym} -10 220 3 0 {name=p3 lab=AGND}
C {opin.sym} -90 390 0 0 {name=p5 lab=RESULT[7..0]}
C {opin.sym} -90 430 0 0 {name=p13 lab=SAMPLE}
C {opin.sym} -90 470 0 0 {name=p14 lab=EOC}
C {ipin.sym} -570 450 2 1 {name=p8 lab=VIN}
C {lab_wire.sym} -530 380 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -530 480 3 0 {name=p4 sig_type=std_logic lab=VBIASN}
C {ipin.sym} -510 470 3 0 {name=p7 lab=VBIASP}
C {COMPARADOR/comparator_3v3_VSS.sym} -470 570 0 0 {name=x2}
C {ipin.sym} -40 220 3 0 {name=p16 lab=VSS}
C {lab_wire.sym} -490 460 1 1 {name=p17 sig_type=std_logic lab=VSS}
