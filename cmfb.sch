v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -380 -210 -380 -70 {lab=VO_P}
N 60 -210 60 -70 {lab=VO_N}
N -380 -520 -380 -370 {lab=VDD_1V5}
N 60 -520 60 -370 {lab=VDD_1V5}
N -140 -520 60 -520 {lab=VDD_1V5}
N -140 -550 -140 -520 {lab=VDD_1V5}
N -400 -370 -380 -370 {lab=VDD_1V5}
N -400 -370 -400 -340 {lab=VDD_1V5}
N -400 -340 -380 -340 {lab=VDD_1V5}
N 60 -340 90 -340 {lab=VDD_1V5}
N 90 -370 90 -340 {lab=VDD_1V5}
N 60 -370 90 -370 {lab=VDD_1V5}
N -380 -10 -380 130 {lab=VSS}
N -30 130 60 130 {lab=VSS}
N 60 -10 60 130 {lab=VSS}
N -30 130 -30 160 {lab=VSS}
N -380 130 -30 130 {lab=VSS}
N -410 -40 -380 -40 {lab=VSS}
N -410 -40 -410 -10 {lab=VSS}
N -410 -10 -380 -10 {lab=VSS}
N -430 -210 -380 -210 {lab=VO_P}
N -380 -310 -380 -210 {lab=VO_P}
N 60 -210 120 -210 {lab=VO_N}
N 60 -310 60 -210 {lab=VO_N}
N -170 -340 20 -340 {lab=VFB}
N 440 -110 440 -70 {lab=V_BIAS}
N 440 -40 460 -40 {lab=VSS}
N 460 -40 460 -10 {lab=VSS}
N 440 -10 460 -10 {lab=VSS}
N 60 130 440 130 {lab=VSS}
N -380 -520 -140 -520 {lab=VDD_1V5}
N 380 -110 440 -110 {lab=V_BIAS}
N 440 -190 440 -110 {lab=V_BIAS}
N 380 -110 380 -40 {lab=V_BIAS}
N 380 -40 400 -40 {lab=V_BIAS}
N 440 -10 440 130 {lab=VSS}
N 30 -40 60 -40 {lab=VSS}
N 30 -40 30 -10 {lab=VSS}
N 30 -10 60 -10 {lab=VSS}
N -340 -40 -100 -40 {lab=V_BIAS}
N 260 -40 380 -40 {lab=V_BIAS}
N -100 -40 -100 90 {lab=V_BIAS}
N -100 90 260 90 {lab=V_BIAS}
N 260 -40 260 90 {lab=V_BIAS}
N 100 -40 260 -40 {lab=V_BIAS}
N -170 -340 -170 -270 {lab=VFB}
N -340 -340 -170 -340 {lab=VFB}
C {sg13g2_pr/sg13_lv_pmos.sym} -360 -340 0 1 {name=M14
l=1u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 40 -340 0 0 {name=M1
l=1u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -360 -40 0 1 {name=M2
l=1u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 80 -40 0 1 {name=M3
l=1u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} -140 -550 3 0 {name=p9 lab=VDD_1V5



}
C {iopin.sym} -30 160 1 0 {name=p11 lab=VSS



}
C {ipin.sym} 440 -190 1 0 {name=p1 lab=V_BIAS}
C {ipin.sym} -170 -270 1 1 {name=p2 lab=VFB
}
C {opin.sym} -430 -210 2 0 {name=p3 lab=VO_P}
C {opin.sym} 120 -210 0 0 {name=p4 lab=VO_N}
C {devices/ngspice_get_value.sym} -420 -430 0 1 {name=r39 node=@n.x3.xm14.nsg13_lv_pmos[cgg]
descr="cgg="}
C {devices/ngspice_get_value.sym} -460 -380 0 1 {name=r139 node=@n.x3.xm14.nsg13_lv_pmos[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} -500 -320 0 1 {name=r140 node=v(@n.x3.xm14.nsg13_lv_pmos[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} -470 -270 0 1 {name=r141 node=i(@n.x3.xm14.nsg13_lv_pmos[ids])
descr="ids="}
C {devices/ngspice_get_value.sym} -260 -440 0 1 {name=r142 node=v(@n.x3.xm14.nsg13_lv_pmos[vdss])
descr="vdss(vds_sat)="}
C {devices/ngspice_get_value.sym} -250 -390 0 1 {name=r143 node=v(@n.x3.xm14.nsg13_lv_pmos[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} -260 -290 0 1 {name=r144 node=v(@n.x3.xm14.nsg13_lv_pmos[fug])
descr="fug(f_t)="}
C {devices/ngspice_get_value.sym} -280 -240 0 1 {name=r145 node=v(@n.x3.xm14.nsg13_lv_pmos[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 30 -440 0 1 {name=r1 node=@n.x3.xm1.nsg13_lv_pmos[cgg]
descr="cgg="}
C {devices/ngspice_get_value.sym} 180 -440 0 1 {name=r2 node=v(@n.x3.xm1.nsg13_lv_pmos[vdss])
descr="vdss(vds_sat)="}
C {devices/ngspice_get_value.sym} -10 -390 0 1 {name=r3 node=@n.x3.xm1.nsg13_lv_pmos[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} -20 -310 0 1 {name=r4 node=v(@n.x3.xm1.nsg13_lv_pmos[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 20 -260 0 1 {name=r5 node=i(@n.x3.xm1.nsg13_lv_pmos[ids])
descr="ids="}
C {devices/ngspice_get_value.sym} 160 -390 0 1 {name=r6 node=v(@n.x3.xm1.nsg13_lv_pmos[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 180 -330 0 1 {name=r7 node=v(@n.x3.xm1.nsg13_lv_pmos[fug])
descr="fug(f_t)="}
C {devices/ngspice_get_value.sym} 170 -270 0 1 {name=r8 node=v(@n.x3.xm1.nsg13_lv_pmos[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 380 -140 0 1 {name=r9 node=@n.x3.xm5.nsg13_lv_nmos[cgg]
descr="cgg="}
C {devices/ngspice_get_value.sym} 550 -140 0 1 {name=r10 node=v(@n.x3.xm5.nsg13_lv_nmos[vdss])
descr="vdss(vds_sat)="}
C {devices/ngspice_get_value.sym} 350 -70 0 1 {name=r11 node=@n.x3.xm5.nsg13_lv_nmos[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 540 -90 0 1 {name=r12 node=v(@n.x3.xm5.nsg13_lv_nmos[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 580 -20 0 1 {name=r13 node=v(@n.x3.xm5.nsg13_lv_nmos[fug])
descr="fug(f_t)="}
C {devices/ngspice_get_value.sym} 370 10 0 1 {name=r14 node=v(@n.x3.xm5.nsg13_lv_nmos[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 390 70 0 1 {name=r15 node=i(@n.x3.xm5.nsg13_lv_nmos[ids])
descr="ids="}
C {devices/ngspice_get_value.sym} 540 50 0 1 {name=r16 node=v(@n.x3.xm5.nsg13_lv_nmos[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} -450 -90 0 1 {name=r17 node=@n.x3.xm2.nsg13_lv_nmos[cgg]
descr="cgg="}
C {devices/ngspice_get_value.sym} -270 -110 0 1 {name=r18 node=v(@n.x3.xm2.nsg13_lv_nmos[vdss])
descr="vdss(vds_sat)="}
C {devices/ngspice_get_value.sym} -500 -20 0 1 {name=r19 node=@n.x3.xm2.nsg13_lv_nmos[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} -270 -50 0 1 {name=r20 node=v(@n.x3.xm2.nsg13_lv_nmos[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} -280 20 0 1 {name=r21 node=v(@n.x3.xm2.nsg13_lv_nmos[fug])
descr="fug(f_t)="}
C {devices/ngspice_get_value.sym} -310 100 0 1 {name=r22 node=v(@n.x3.xm2.nsg13_lv_nmos[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} -510 60 0 1 {name=r23 node=v(@n.x3.xm2.nsg13_lv_nmos[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} -470 120 0 1 {name=r24 node=i(@n.x3.xm2.nsg13_lv_nmos[ids])
descr="ids="}
C {devices/ngspice_get_value.sym} 30 -120 0 1 {name=r25 node=@n.x3.xm3.nsg13_lv_nmos[cgg]
descr="cgg="}
C {devices/ngspice_get_value.sym} 170 -110 0 1 {name=r26 node=v(@n.x3.xm3.nsg13_lv_nmos[vdss])
descr="vdss(vds_sat)="}
C {devices/ngspice_get_value.sym} -20 -60 0 1 {name=r27 node=@n.x3.xm3.nsg13_lv_nmos[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} -20 10 0 1 {name=r28 node=v(@n.x3.xm3.nsg13_lv_nmos[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 180 -50 0 1 {name=r29 node=v(@n.x3.xm3.nsg13_lv_nmos[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 220 0 0 1 {name=r30 node=v(@n.x3.xm3.nsg13_lv_nmos[fug])
descr="fug(f_t)="}
C {devices/ngspice_get_value.sym} 170 60 0 1 {name=r31 node=v(@n.x3.xm3.nsg13_lv_nmos[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 40 60 0 1 {name=r32 node=i(@n.x3.xm3.nsg13_lv_nmos[ids])
descr="ids="}
C {sg13g2_pr/sg13_lv_nmos.sym} 420 -40 0 0 {name=M5
l=1u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
