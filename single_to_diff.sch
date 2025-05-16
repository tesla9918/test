v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 40 260 70 {lab=GND}
N 220 30 220 70 {lab=GND}
N 220 70 260 70 {lab=GND}
N 390 -20 450 -20 {lab=#net1}
N 390 -70 390 -20 {lab=#net1}
N 260 -20 390 -20 {lab=#net1}
N 390 -70 710 -70 {lab=#net1}
N 710 -70 710 -20 {lab=#net1}
N 200 -10 220 -10 {lab=Vi}
N 490 -90 490 -30 {lab=Vin}
N 670 -90 670 -30 {lab=Vip}
N 590 30 670 30 {lab=#net2}
N 450 20 450 50 {lab=GND}
N 710 20 710 50 {lab=GND}
N 590 30 590 50 {lab=#net2}
N 490 30 590 30 {lab=#net2}
N 590 110 590 140 {lab=GND}
C {gnd.sym} 260 70 0 0 {name=l1 lab=GND}
C {vcvs.sym} 260 10 0 0 {name=E1 value=1}
C {iopin.sym} 200 -10 0 1 {name=p1 lab=Vi
}
C {vcvs.sym} 490 0 0 0 {name=E2 value=-0.5

}
C {vcvs.sym} 670 0 0 1 {name=E3 value=0.5
}
C {iopin.sym} 670 -90 3 0 {name=p2 lab=Vip}
C {iopin.sym} 490 -90 3 0 {name=p3 lab=Vin
}
C {gnd.sym} 450 50 0 0 {name=l3 lab=GND}
C {gnd.sym} 710 50 0 0 {name=l4 lab=GND}
C {vsource.sym} 590 80 0 0 {name=Vcm value= 0.75 savecurrent=false}
C {gnd.sym} 590 140 0 0 {name=l2 lab=GND}
