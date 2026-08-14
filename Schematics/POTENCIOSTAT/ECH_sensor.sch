v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 -100 160 -70 {
lab=WE}
N 160 -370 160 -360 {
lab=CE}
N 200 -180 200 -170 {
lab=#net1}
N 160 -180 200 -180 {
lab=#net1}
N 120 -180 120 -170 {
lab=#net1}
N 120 -110 120 -100 {
lab=WE}
N 160 -100 200 -100 {
lab=WE}
N 200 -110 200 -100 {
lab=WE}
N 160 -280 160 -260 {
lab=#net2}
N 160 -200 160 -180 {
lab=#net1}
N 100 -280 160 -280 {}
N 120 -100 160 -100 {
lab=WE}
N 120 -180 160 -180 {
lab=#net1}
N 160 -300 160 -280 {
lab=#net2}
C {devices/res.sym} 160 -330 2 0 {name=R3
value=47
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 160 -230 2 0 {name=R1
value=200
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 160 -370 3 0 {name=p1 lab=CE}
C {devices/iopin.sym} 100 -280 2 0 {name=p3 lab=RE}
C {devices/iopin.sym} 160 -70 1 0 {name=p2 lab=WE}
C {devices/capa.sym} 120 -140 2 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 200 -140 2 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
