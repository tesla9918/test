v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -570 -140 -440 -140 {lab=#net1}
N -570 -120 -440 -120 {lab=#net2}
N -920 -120 -870 -120 {lab=Vi}
N -920 -120 -920 -80 {lab=Vi}
N -920 -20 -920 0 {lab=GND}
N -260 -50 -260 -20 {lab=GND}
N -320 -200 -320 -170 {lab=#net3}
N 250 -50 250 -10 {lab=GND}
N 630 -50 630 -10 {lab=GND}
N 390 -110 490 -110 {lab=VFB}
N 50 -240 790 -240 {lab=Von}
N 50 -240 50 -120 {lab=Von}
N 50 40 790 40 {lab=Vop}
N -340 -420 -340 -170 {lab=#net4}
N -220 -420 -220 -170 {lab=#net4}
N -320 -420 -220 -420 {lab=#net4}
N -320 -420 -320 -260 {lab=#net4}
N -340 -420 -320 -420 {lab=#net4}
N 670 -350 670 -170 {lab=#net5}
N 670 -490 670 -410 {lab=GND}
N 590 -300 590 -170 {lab=V_actuall}
N 790 -110 790 40 {lab=Vop}
N 790 -240 790 -130 {lab=Von}
N 50 -100 50 40 {lab=Vop}
N 200 -270 200 -170 {lab=#net6}
N -110 -100 -110 170 {lab=Vop}
N -140 -100 -110 -100 {lab=Vop}
N -50 -120 -50 180 {lab=Von}
N 50 -120 90 -120 {lab=Von}
N -110 230 -110 270 {lab=#net7}
N -50 240 -50 270 {lab=#net8}
N -110 330 -110 370 {lab=#net9}
N -50 330 -50 380 {lab=#net10}
N -220 -420 200 -420 {lab=#net4}
N -50 -120 50 -120 {lab=Von}
N -140 -120 -50 -120 {lab=Von}
N 50 -100 90 -100 {lab=Vop}
N -110 -100 50 -100 {lab=Vop}
N 200 -420 200 -330 {lab=#net4}
N 250 -550 250 -480 {lab=GND}
N 200 -420 250 -420 {lab=#net4}
N 250 -420 250 -170 {lab=#net4}
N -50 440 -50 460 {lab=GND}
N -110 430 -110 450 {lab=GND}
C {devices/code_shown.sym} -870 -400 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} 1030 -320 0 0 {name=NGSPICE only_toplevel=false value="
.temp 27
.control
save all
ac dec 100 1 10G
plot v(vop) v(von)
let gain = db((v(vop)-v(von))/v(vi))
plot gain
meas ac UGBW find frequency when gain=0
print UGBW

noise V(Vop,Von) Vi dec 100 1 5Meg
plot noise1.inoise_spectrum
print inoise_total
op
write gm2_tb_ac.raw
.endc
"}
C {code.sym} 1680 -100 0 0 {name=NGSPICE1 only_toplevel=false value="
.save @n.x1.xm1.nsg13_lv_nmos[gm]
.save @n.x1.xm1.nsg13_lv_nmos[vth]
.save @n.x1.xm1.nsg13_lv_nmos[cgg]
.save @n.x1.xm1.nsg13_lv_nmos[vdss]
.save @n.x1.xm1.nsg13_lv_nmos[ids]
.save @n.x1.xm1.nsg13_lv_nmos[vds]
.save @n.x1.xm1.nsg13_lv_nmos[fug]
.save @n.x1.xm1.nsg13_lv_nmos[vgs]


.save @n.x1.xm2.nsg13_lv_nmos[gm]
.save @n.x1.xm2.nsg13_lv_nmos[vth]
.save @n.x1.xm2.nsg13_lv_nmos[cgg]
.save @n.x1.xm2.nsg13_lv_nmos[vdss]
.save @n.x1.xm2.nsg13_lv_nmos[ids]
.save @n.x1.xm2.nsg13_lv_nmos[vds]
.save @n.x1.xm2.nsg13_lv_nmos[fug]
.save @n.x1.xm2.nsg13_lv_nmos[vgs]


.save @n.x1.xm3.nsg13_lv_pmos[gm]
.save @n.x1.xm3.nsg13_lv_pmos[vth]
.save @n.x1.xm3.nsg13_lv_pmos[cgg]
.save @n.x1.xm3.nsg13_lv_pmos[vdss]
.save @n.x1.xm3.nsg13_lv_pmos[ids]
.save @n.x1.xm3.nsg13_lv_pmos[vds]
.save @n.x1.xm3.nsg13_lv_pmos[fug]
.save @n.x1.xm3.nsg13_lv_pmos[vgs]


.save @n.x1.xm4.nsg13_lv_pmos[gm]
.save @n.x1.xm4.nsg13_lv_pmos[vth]
.save @n.x1.xm4.nsg13_lv_pmos[cgg]
.save @n.x1.xm4.nsg13_lv_pmos[vdss]
.save @n.x1.xm4.nsg13_lv_pmos[ids]
.save @n.x1.xm4.nsg13_lv_pmos[vds]
.save @n.x1.xm4.nsg13_lv_pmos[fug]
.save @n.x1.xm4.nsg13_lv_pmos[vgs]


.save @n.x1.xm5.nsg13_lv_nmos[gm]
.save @n.x1.xm5.nsg13_lv_nmos[vth]
.save @n.x1.xm5.nsg13_lv_nmos[cgg]
.save @n.x1.xm5.nsg13_lv_nmos[vdss]
.save @n.x1.xm5.nsg13_lv_nmos[ids]
.save @n.x1.xm5.nsg13_lv_nmos[vds]
.save @n.x1.xm5.nsg13_lv_nmos[fug]
.save @n.x1.xm5.nsg13_lv_nmos[vgs]


.save @n.x1.xm6.nsg13_lv_nmos[gm]
.save @n.x1.xm6.nsg13_lv_nmos[vth]
.save @n.x1.xm6.nsg13_lv_nmos[cgg]
.save @n.x1.xm6.nsg13_lv_nmos[vdss]
.save @n.x1.xm6.nsg13_lv_nmos[ids]
.save @n.x1.xm6.nsg13_lv_nmos[vds]
.save @n.x1.xm6.nsg13_lv_nmos[fug]
.save @n.x1.xm6.nsg13_lv_nmos[vgs]


.save @n.x1.xm7.nsg13_lv_nmos[gm]
.save @n.x1.xm7.nsg13_lv_nmos[vth]
.save @n.x1.xm7.nsg13_lv_nmos[cgg]
.save @n.x1.xm7.nsg13_lv_nmos[vdss]
.save @n.x1.xm7.nsg13_lv_nmos[ids]
.save @n.x1.xm7.nsg13_lv_nmos[vds]
.save @n.x1.xm7.nsg13_lv_nmos[fug]
.save @n.x1.xm7.nsg13_lv_nmos[vgs]


.save @n.x1.xm8.nsg13_lv_pmos[gm]
.save @n.x1.xm8.nsg13_lv_pmos[vth]
.save @n.x1.xm8.nsg13_lv_pmos[cgg]
.save @n.x1.xm8.nsg13_lv_pmos[vdss]
.save @n.x1.xm8.nsg13_lv_pmos[ids]
.save @n.x1.xm8.nsg13_lv_pmos[vds]
.save @n.x1.xm8.nsg13_lv_pmos[fug]
.save @n.x1.xm8.nsg13_lv_pmos[vgs]


.save @n.x1.xm9.nsg13_lv_nmos[gm]
.save @n.x1.xm9.nsg13_lv_nmos[vth]
.save @n.x1.xm9.nsg13_lv_nmos[cgg]
.save @n.x1.xm9.nsg13_lv_nmos[vdss]
.save @n.x1.xm9.nsg13_lv_nmos[ids]
.save @n.x1.xm9.nsg13_lv_nmos[vds]
.save @n.x1.xm9.nsg13_lv_nmos[fug]
.save @n.x1.xm9.nsg13_lv_nmos[vgs]


.save @n.x1.xm10.nsg13_lv_pmos[gm]
.save @n.x1.xm10.nsg13_lv_pmos[vth]
.save @n.x1.xm10.nsg13_lv_pmos[cgg]
.save @n.x1.xm10.nsg13_lv_pmos[vdss]
.save @n.x1.xm10.nsg13_lv_pmos[ids]
.save @n.x1.xm10.nsg13_lv_pmos[vds]
.save @n.x1.xm10.nsg13_lv_pmos[fug]
.save @n.x1.xm10.nsg13_lv_pmos[vgs]


.save @n.x1.xm11.nsg13_lv_nmos[gm]
.save @n.x1.xm11.nsg13_lv_nmos[vth]
.save @n.x1.xm11.nsg13_lv_nmos[cgg]
.save @n.x1.xm11.nsg13_lv_nmos[vdss]
.save @n.x1.xm11.nsg13_lv_nmos[ids]
.save @n.x1.xm11.nsg13_lv_nmos[vds]
.save @n.x1.xm11.nsg13_lv_nmos[fug]
.save @n.x1.xm11.nsg13_lv_nmos[vgs]


.save @n.x1.xm12.nsg13_lv_nmos[gm]
.save @n.x1.xm12.nsg13_lv_nmos[vth]
.save @n.x1.xm12.nsg13_lv_nmos[cgg]
.save @n.x1.xm12.nsg13_lv_nmos[vdss]
.save @n.x1.xm12.nsg13_lv_nmos[ids]
.save @n.x1.xm12.nsg13_lv_nmos[vds]
.save @n.x1.xm12.nsg13_lv_nmos[fug]
.save @n.x1.xm12.nsg13_lv_nmos[vgs]


.save @n.x1.xm13.nsg13_lv_nmos[gm]
.save @n.x1.xm13.nsg13_lv_nmos[vth]
.save @n.x1.xm13.nsg13_lv_nmos[cgg]
.save @n.x1.xm13.nsg13_lv_nmos[vdss]
.save @n.x1.xm13.nsg13_lv_nmos[ids]
.save @n.x1.xm13.nsg13_lv_nmos[vds]
.save @n.x1.xm13.nsg13_lv_nmos[fug]
.save @n.x1.xm13.nsg13_lv_nmos[vgs]


.save @n.x1.xm14.nsg13_lv_pmos[gm]
.save @n.x1.xm14.nsg13_lv_pmos[vth]
.save @n.x1.xm14.nsg13_lv_pmos[cgg]
.save @n.x1.xm14.nsg13_lv_pmos[vdss]
.save @n.x1.xm14.nsg13_lv_pmos[ids]
.save @n.x1.xm14.nsg13_lv_pmos[vds]
.save @n.x1.xm14.nsg13_lv_pmos[fug]
.save @n.x1.xm14.nsg13_lv_pmos[vgs]


.save @n.x1.xm15.nsg13_lv_pmos[gm]
.save @n.x1.xm15.nsg13_lv_pmos[vth]
.save @n.x1.xm15.nsg13_lv_pmos[cgg]
.save @n.x1.xm15.nsg13_lv_pmos[vdss]
.save @n.x1.xm15.nsg13_lv_pmos[ids]
.save @n.x1.xm15.nsg13_lv_pmos[vds]
.save @n.x1.xm15.nsg13_lv_pmos[fug]
.save @n.x1.xm15.nsg13_lv_pmos[vgs]


.save @n.x1.xm16.nsg13_lv_pmos[gm]
.save @n.x1.xm16.nsg13_lv_pmos[vth]
.save @n.x1.xm16.nsg13_lv_pmos[cgg]
.save @n.x1.xm16.nsg13_lv_pmos[vdss]
.save @n.x1.xm16.nsg13_lv_pmos[ids]
.save @n.x1.xm16.nsg13_lv_pmos[vds]
.save @n.x1.xm16.nsg13_lv_pmos[fug]
.save @n.x1.xm16.nsg13_lv_pmos[vgs]


.save @n.x1.xm17.nsg13_lv_pmos[gm]
.save @n.x1.xm17.nsg13_lv_pmos[vth]
.save @n.x1.xm17.nsg13_lv_pmos[cgg]
.save @n.x1.xm17.nsg13_lv_pmos[vdss]
.save @n.x1.xm17.nsg13_lv_pmos[ids]
.save @n.x1.xm17.nsg13_lv_pmos[vds]
.save @n.x1.xm17.nsg13_lv_pmos[fug]
.save @n.x1.xm17.nsg13_lv_pmos[vgs]


.save @n.x1.xm18.nsg13_lv_nmos[gm]
.save @n.x1.xm18.nsg13_lv_nmos[vth]
.save @n.x1.xm18.nsg13_lv_nmos[cgg]
.save @n.x1.xm18.nsg13_lv_nmos[vdss]
.save @n.x1.xm18.nsg13_lv_nmos[ids]
.save @n.x1.xm18.nsg13_lv_nmos[vds]
.save @n.x1.xm18.nsg13_lv_nmos[fug]
.save @n.x1.xm18.nsg13_lv_nmos[vgs]


.save @n.x1.xm19.nsg13_lv_nmos[gm]
.save @n.x1.xm19.nsg13_lv_nmos[vth]
.save @n.x1.xm19.nsg13_lv_nmos[cgg]
.save @n.x1.xm19.nsg13_lv_nmos[vdss]
.save @n.x1.xm19.nsg13_lv_nmos[ids]
.save @n.x1.xm19.nsg13_lv_nmos[vds]
.save @n.x1.xm19.nsg13_lv_nmos[fug]
.save @n.x1.xm19.nsg13_lv_nmos[vgs]


.save @n.x1.xm20.nsg13_lv_nmos[gm]
.save @n.x1.xm20.nsg13_lv_nmos[vth]
.save @n.x1.xm20.nsg13_lv_nmos[cgg]
.save @n.x1.xm20.nsg13_lv_nmos[vdss]
.save @n.x1.xm20.nsg13_lv_nmos[ids]
.save @n.x1.xm20.nsg13_lv_nmos[vds]
.save @n.x1.xm20.nsg13_lv_nmos[fug]
.save @n.x1.xm20.nsg13_lv_nmos[vgs]


.save @n.x1.xm21.nsg13_lv_nmos[gm]
.save @n.x1.xm21.nsg13_lv_nmos[vth]
.save @n.x1.xm21.nsg13_lv_nmos[cgg]
.save @n.x1.xm21.nsg13_lv_nmos[vdss]
.save @n.x1.xm21.nsg13_lv_nmos[ids]
.save @n.x1.xm21.nsg13_lv_nmos[vds]
.save @n.x1.xm21.nsg13_lv_nmos[fug]
.save @n.x1.xm21.nsg13_lv_nmos[vgs]

.save @n.x3.xm2.nsg13_lv_nmos[gm]
.save @n.x3.xm2.nsg13_lv_nmos[vth]
.save @n.x3.xm2.nsg13_lv_nmos[cgg]
.save @n.x3.xm2.nsg13_lv_nmos[vdss]
.save @n.x3.xm2.nsg13_lv_nmos[ids]
.save @n.x3.xm2.nsg13_lv_nmos[vds]
.save @n.x3.xm2.nsg13_lv_nmos[fug]
.save @n.x3.xm2.nsg13_lv_nmos[vgs]


.save @n.x3.xm3.nsg13_lv_nmos[gm]
.save @n.x3.xm3.nsg13_lv_nmos[vth]
.save @n.x3.xm3.nsg13_lv_nmos[cgg]
.save @n.x3.xm3.nsg13_lv_nmos[vdss]
.save @n.x3.xm3.nsg13_lv_nmos[ids]
.save @n.x3.xm3.nsg13_lv_nmos[vds]
.save @n.x3.xm3.nsg13_lv_nmos[fug]
.save @n.x3.xm3.nsg13_lv_nmos[vgs]

.save @n.x3.xm1.nsg13_lv_pmos[gm]
.save @n.x3.xm1.nsg13_lv_pmos[vth]
.save @n.x3.xm1.nsg13_lv_pmos[cgg]
.save @n.x3.xm1.nsg13_lv_pmos[vdss]
.save @n.x3.xm1.nsg13_lv_pmos[ids]
.save @n.x3.xm1.nsg13_lv_pmos[vds]
.save @n.x3.xm1.nsg13_lv_pmos[fug]
.save @n.x1.xm1.nsg13_lv_pmos[vgs]

.save @n.x3.xm14.nsg13_lv_pmos[gm]
.save @n.x3.xm14.nsg13_lv_pmos[vth]
.save @n.x3.xm14.nsg13_lv_pmos[cgg]
.save @n.x3.xm14.nsg13_lv_pmos[vdss]
.save @n.x3.xm14.nsg13_lv_pmos[ids]
.save @n.x3.xm14.nsg13_lv_pmos[vds]
.save @n.x3.xm14.nsg13_lv_pmos[fug]
.save @n.x3.xm14.nsg13_lv_pmos[vgs]


.save @n.x3.xm4.nsg13_lv_pmos[gm]
.save @n.x3.xm4.nsg13_lv_pmos[vth]
.save @n.x3.xm4.nsg13_lv_pmos[cgg]
.save @n.x3.xm4.nsg13_lv_pmos[vdss]
.save @n.x3.xm4.nsg13_lv_pmos[ids]
.save @n.x3.xm4.nsg13_lv_pmos[vds]
.save @n.x3.xm4.nsg13_lv_pmos[fug]
.save @n.x3.xm4.nsg13_lv_pmos[vgs]

.save @n.x3.xm5.nsg13_lv_nmos[gm]
.save @n.x3.xm5.nsg13_lv_nmos[vth]
.save @n.x3.xm5.nsg13_lv_nmos[cgg]
.save @n.x3.xm5.nsg13_lv_nmos[vdss]
.save @n.x3.xm5.nsg13_lv_nmos[ids]
.save @n.x3.xm5.nsg13_lv_nmos[vds]
.save @n.x3.xm5.nsg13_lv_nmos[fug]
.save @n.x3.xm5.nsg13_lv_nmos[vgs]










"
}
C {vsource.sym} -920 -50 0 0 {name=Vi value="dc 0 ac 1" savecurrent=false}
C {gnd.sym} -920 0 0 0 {name=l2 lab=GND}
C {vsource.sym} 250 -450 2 0 {name=VDD value=1.5 savecurrent=false
}
C {gnd.sym} 250 -550 2 0 {name=l3 lab=GND
}
C {devices/launcher.sym} -390 90 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {gm2.sym} -290 -110 0 0 {name=x1
}
C {single_to_diff.sym} -720 -120 0 0 {name=x2}
C {gnd.sym} -260 -20 0 0 {name=l1 lab=GND}
C {isource.sym} -320 -230 0 0 {name=Ibias value=2.3u}
C {cmfb.sym} 240 -110 0 0 {name=x3
}
C {gnd.sym} 250 -10 0 0 {name=l4 lab=GND
}
C {gnd.sym} 630 -10 0 0 {name=l5 lab=GND
}
C {vsource.sym} 670 -380 2 0 {name=Vcm value=0.75 savecurrent=false
}
C {gnd.sym} 670 -490 2 0 {name=l6 lab=GND
}
C {lab_pin.sym} -110 80 0 1 {name=p1 sig_type=std_logic lab=Vop}
C {lab_pin.sym} -50 100 0 1 {name=p2 sig_type=std_logic lab=Von}
C {cmfb_ideal.sym} 640 -110 0 1 {name=x4
}
C {lab_pin.sym} 590 -300 0 0 {name=p3 sig_type=std_logic lab=V_actuall
}
C {lab_pin.sym} 440 -110 1 0 {name=p4 sig_type=std_logic lab=VFB
}
C {vsource.sym} -110 200 0 0 {name=Vp value=0 savecurrent=false
}
C {vsource.sym} -50 210 0 0 {name=Vn value=0 savecurrent=false
}
C {res.sym} -110 300 0 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1
}
C {res.sym} -50 300 0 0 {name=R2
value=500k
footprint=1206
device=resistor
m=1
}
C {isource.sym} 200 -300 0 0 {name=Ibias1 value=2.3u
}
C {gnd.sym} -110 450 0 0 {name=l7 lab=GND}
C {gnd.sym} -50 460 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -920 -110 0 0 {name=p5 sig_type=std_logic lab=Vi}
C {capa.sym} -110 400 0 0 {name=C1
m=1
value=318f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -50 410 0 0 {name=C2
m=1
value=318f
footprint=1206
device="ceramic capacitor"}
