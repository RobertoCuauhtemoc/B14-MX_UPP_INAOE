v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -200 300 -200 {lab=VBIASN}
C {gnd.sym} 300 -180 0 0 {name=l11 lab=0}
C {devices/isource.sym} 180 -230 0 0 {name=I0 value=64u}
C {vdd.sym} 300 -220 3 0 {name=l21 lab=VDD}
C {vdd.sym} 180 -260 0 0 {name=l10 lab=VDD}
C {lab_pin.sym} 180 -200 3 0 {name=p6 sig_type=std_logic lab=VBIASN}
C {lab_pin.sym} 480 -200 3 0 {name=p2 sig_type=std_logic lab=VBIASP}
C {vsource.sym} 100 -230 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} 100 -200 0 0 {name=l5 lab=0}
C {vdd.sym} 100 -260 0 0 {name=l13 lab=VDD}
C {vdd.sym} 40 -50 0 0 {name=l1 lab=VDD}
C {lab_pin.sym} 60 40 3 0 {name=p3 sig_type=std_logic lab=VBIASP}
C {vsource.sym} 20 -230 0 0 {name=VDAC value=1.65 savecurrent=false}
C {vsource.sym} -60 -230 0 0 {name=VIN value=2 savecurrent=false}
C {gnd.sym} 20 -200 0 0 {name=l6 lab=0}
C {gnd.sym} -60 -200 0 0 {name=l7 lab=0}
C {vdd.sym} -60 -260 0 0 {name=l15 lab=VIN}
C {vdd.sym} 20 -260 0 0 {name=l16 lab=VDAC}
C {vdd.sym} 0 20 3 0 {name=l2 lab=VIN}
C {vdd.sym} 0 -20 3 0 {name=l3 lab=VDAC}
C {lab_pin.sym} 120 0 2 0 {name=p4 sig_type=std_logic lab=VOUT}
C {code_shown.sym} 200 120 0 0 {name=s1 only_toplevel=false value="
.control

save all
dc VIN 0.65 2.65 1m


plot v(VOUT)
.endc
"}
C {code.sym} 500 -50 0 0 {name=MODELS_GF only_toplevel=true value="
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
C {lab_pin.sym} 40 50 3 0 {name=p1 sig_type=std_logic lab=VBIASN}
C {gnd.sym} 80 30 0 0 {name=l4 lab=0}
C {BIAS/BIAS_3v3.sym} 380 -190 0 0 {name=x2}
C {COMPARADOR/comparator_3v3_VSS.sym} 100 140 0 0 {name=x1}
