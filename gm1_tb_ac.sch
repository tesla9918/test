v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 30 -60 30 {lab=#net1}
N -140 50 -60 50 {lab=#net2}
N 130 110 130 140 {lab=GND}
N -440 50 -440 100 {lab=Vi}
N -440 160 -440 190 {lab=GND}
N 110 -160 110 -10 {lab=#net3}
N 50 -160 110 -160 {lab=#net3}
N 20 -160 20 -10 {lab=#net3}
N 110 -320 110 -210 {lab=GND}
N 50 -60 50 -10 {lab=#net4}
N 50 -160 50 -120 {lab=#net3}
N 20 -160 50 -160 {lab=#net3}
N 240 40 410 40 {lab=Von}
N 330 60 330 90 {lab=Vop}
N 240 60 330 60 {lab=Vop}
N 410 40 410 90 {lab=Von}
N 330 150 330 180 {lab=GND}
N 410 150 410 180 {lab=GND}
C {gm1.sym} 80 50 0 0 {name=x1}
C {single_to_diff.sym} -290 50 0 0 {name=x2}
C {gnd.sym} 130 140 0 0 {name=l1 lab=GND}
C {vsource.sym} -440 130 0 0 {name=Vi value= "dc 0 ac 1" savecurrent=false}
C {gnd.sym} -440 190 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -440 70 0 0 {name=p1 sig_type=std_logic lab=Vi}
C {vsource.sym} 110 -190 2 0 {name=VDD value=1.5 savecurrent=false}
C {gnd.sym} 110 -320 2 0 {name=l3 lab=GND}
C {isource.sym} 50 -90 0 0 {name=Ibias value=1.5u}
C {lab_pin.sym} 350 40 0 1 {name=p2 sig_type=std_logic lab=Von}
C {devices/code_shown.sym} -740 -180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} 440 -360 0 0 {name=NGSPICE only_toplevel=false value="
.temp 27
.control
save all
ac dec 100 1 10G
*plot v(vop) v(von)
let gain = db((v(vop)-v(von))/v(vi))
plot gain
*meas ac UGBW find frequency when gain=0
*print UGBW


noise V(Vop,Von) Vi dec 100 1 12Meg
plot noise1.inoise_spectrum
print inoise_total
op
write gm1_tb_ac.raw
.endc
"}
C {devices/launcher.sym} -30 190 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code.sym} 1020 -260 0 0 {name=NGSPICE1 only_toplevel=false value="
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



"}
C {lab_pin.sym} 270 60 0 1 {name=p4 sig_type=std_logic lab=Vop}
C {res.sym} 330 120 0 0 {name=R1
value=999k
footprint=1206
device=resistor
noisy=0
temp=0
m=1}
C {gnd.sym} 330 180 0 0 {name=l4 lab=GND}
C {res.sym} 410 120 0 0 {name=R2
value=999k
footprint=1206
device=resistor
noisy=0
temp=0
m=1}
C {gnd.sym} 410 180 0 0 {name=l5 lab=GND}
