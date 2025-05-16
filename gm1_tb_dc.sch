v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 290 90 290 110 {lab=GND}
N 400 40 470 40 {lab=Vop}
N 470 40 470 50 {lab=Vop}
N 400 20 600 20 {lab=Von}
N 600 20 600 50 {lab=Von}
N 10 10 100 10 {lab=#net1}
N 10 30 100 30 {lab=#net2}
N -320 30 -320 60 {lab=Vi}
N -320 30 -290 30 {lab=Vi}
N -320 120 -320 140 {lab=GND}
N 210 -100 210 -30 {lab=#net3}
N 270 -220 270 -30 {lab=#net4}
N 210 -220 210 -160 {lab=#net4}
N 180 -220 180 -30 {lab=#net4}
N 210 -220 270 -220 {lab=#net4}
N 180 -220 210 -220 {lab=#net4}
N 270 -340 270 -280 {lab=GND}
N 470 110 470 130 {lab=#net5}
N 470 190 470 220 {lab=GND}
N 600 190 600 220 {lab=GND}
N 600 110 600 130 {lab=#net6}
C {single_to_diff.sym} -140 30 0 0 {name=x2}
C {vsource.sym} -320 90 0 0 {name=Vi value=0 savecurrent=false}
C {devices/code_shown.sym} -380 -240 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} 750 -300 0 0 {name=NGSPICE only_toplevel=false value="
.temp 27
.control
save all

setplot op1
op
let im1 = @n.x1.xm1.nsg13_lv_nmos[ids]
let gm1 = @n.x1.xm1.nsg13_lv_nmos[gm]
let gmid1 = gm1/im1
print gmid1
let im2 = @n.x1.xm2.nsg13_lv_nmos[ids]
let gm2 = @n.x1.xm2.nsg13_lv_nmos[gm]
let gmid2 = gm2/im2
print gmid2

setplot dc1
dc Vi -1.0 1.0 0.01
let iout = i(vp)-i(vn)
let gm = deriv(iout)
plot i(vp)
*plot i(vn)
plot iout
plot gm
op
write gm1_tb_dc.raw
.endc
"}
C {vsource.sym} 270 -250 2 0 {name=VDD value=1.5 savecurrent=false}
C {gnd.sym} 270 -340 2 0 {name=l3 lab=GND}
C {gnd.sym} 470 210 0 0 {name=l4 lab=GND}
C {gnd.sym} 600 220 0 0 {name=l5 lab=GND}
C {gnd.sym} 290 110 0 0 {name=l1 lab=GND}
C {isource.sym} 210 -130 0 0 {name=Ibias value=2.3u}
C {gm1.sym} 240 30 0 0 {name=x1}
C {gnd.sym} -320 140 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -320 40 0 0 {name=p1 sig_type=std_logic lab=Vi}
C {code.sym} 1160 -320 0 0 {name=NGSPICE1 only_toplevel=false value="
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
C {devices/launcher.sym} 260 260 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {res.sym} 470 160 0 0 {name=R1
value=600k
footprint=1206
device=resistor
m=1}
C {res.sym} 600 160 0 0 {name=R2
value=600k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 470 80 0 0 {name=Vp value=0 savecurrent=false}
C {vsource.sym} 600 80 0 0 {name=Vn value=0 savecurrent=false}
C {lab_pin.sym} 550 20 0 0 {name=p2 sig_type=std_logic lab=Von}
C {lab_pin.sym} 450 40 0 0 {name=p3 sig_type=std_logic lab=Vop}
