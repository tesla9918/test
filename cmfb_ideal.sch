v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 100 40 120 {
lab=VSS}
N -40 50 0 50 {
lab=VO_N}
N -40 -50 0 -50 {
lab=VO_P}
N 270 80 330 80 {
lab=VFB}
N 0 -10 0 20 {
lab=#net1}
N 0 20 40 20 {
lab=#net1}
N 40 20 40 40 {
lab=#net1}
N 110 120 150 120 {
lab=VSS}
N 150 100 150 120 {
lab=VSS}
N 110 90 110 120 {
lab=VSS}
N 0 90 0 120 {
lab=VSS}
N 0 120 40 120 {
lab=VSS}
N 40 -80 110 -80 {
lab=total}
N 110 -80 110 50 {
lab=total}
N 150 20 150 40 {
lab=VCM_ACTUAL}
N 150 20 220 20 {
lab=VCM_ACTUAL}
N 200 80 210 80 {
lab=VSS}
N 220 20 220 40 {
lab=VCM_ACTUAL}
N 200 80 200 120 {
lab=VSS}
N 150 120 200 120 {
lab=VSS}
N 40 0 90 0 {
lab=VSS}
N 90 0 90 120 {
lab=VSS}
N 100 120 100 230 {
lab=VSS}
N 260 20 370 20 {
lab=VCM}
N -40 180 370 180 {
lab=VCM}
N 370 20 370 180 {
lab=VCM}
N -40 230 100 230 {
lab=VSS}
N 260 20 260 40 {
lab=VCM}
N 220 -10 220 20 {
lab=VCM_ACTUAL}
N 220 -10 290 -10 {
lab=VCM_ACTUAL}
N 40 -80 40 -60 {
lab=total}
N 100 120 110 120 {
lab=VSS}
N 40 120 90 120 {
lab=VSS}
N 90 120 100 120 {
lab=VSS}
C {devices/vcvs.sym} 40 70 0 0 {name=E3 value=-1
}
C {devices/vcvs.sym} 40 -30 0 0 {name=E4 value=1}
C {devices/vcvs.sym} 150 70 0 0 {name=E5 value=0.5}
C {devices/vcvs.sym} 240 80 1 0 {name=E6 value=-40
}
C {devices/ipin.sym} -40 -50 0 0 {name=p1 lab=VO_P}
C {devices/ipin.sym} -40 50 0 0 {name=p2 lab=VO_N}
C {devices/ipin.sym} -40 180 0 0 {name=p3 lab=VCM}
C {devices/ipin.sym} -40 230 0 0 {name=p4 lab=VSS}
C {devices/opin.sym} 330 80 0 0 {name=p5 lab=VFB}
C {devices/opin.sym} 290 -10 0 0 {name=p6 lab=VCM_ACTUAL}
C {lab_pin.sym} 110 -60 0 0 {name=p7 sig_type=std_logic lab=total}
