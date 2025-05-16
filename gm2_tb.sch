v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 -30 90 -30 {lab=#net1}
N -40 -10 90 -10 {lab=#net2}
N -390 -10 -340 -10 {lab=#net3}
N -390 -10 -390 30 {lab=#net3}
N -390 90 -390 110 {lab=GND}
N 270 60 270 90 {lab=GND}
N 210 -90 210 -60 {lab=#net4}
N 190 -310 190 -60 {lab=#net5}
N 310 -310 310 -60 {lab=#net5}
N 210 -310 310 -310 {lab=#net5}
N 210 -310 210 -150 {lab=#net5}
N 190 -310 210 -310 {lab=#net5}
N 1250 -310 1300 -310 {lab=#net5}
N 1300 -440 1300 -370 {lab=GND}
N 1930 -360 1930 -280 {lab=GND}
N 1440 0 1750 0 {lab=VFB}
N 1300 60 1300 110 {lab=GND}
N 1890 60 1890 110 {lab=GND}
N 1300 -310 1300 -60 {lab=#net5}
N 1250 -140 1250 -60 {lab=#net6}
N 1250 -310 1250 -200 {lab=#net5}
N 1850 -170 1850 -60 {lab=V_actuall}
N 1930 -220 1930 -60 {lab=#net7}
N 2050 -110 2050 -20 {lab=Von}
N 2050 0 2050 150 {lab=Vop}
N 960 -10 1140 -10 {lab=Von}
N 960 10 1140 10 {lab=Vop}
N 710 290 710 340 {lab=#net8}
N 770 300 770 340 {lab=#net9}
N 710 10 710 230 {lab=Vop}
N 770 -10 770 240 {lab=Von}
N 310 -310 1250 -310 {lab=#net5}
N 390 10 710 10 {lab=Vop}
N 390 -10 770 -10 {lab=Von}
N 960 -110 2050 -110 {lab=Von}
N 960 -110 960 -10 {lab=Von}
N 770 -10 960 -10 {lab=Von}
N 960 10 960 150 {lab=Vop}
N 710 10 960 10 {lab=Vop}
N 960 150 2050 150 {lab=Vop}
C {vsource.sym} -390 60 0 0 {name=Vi value=0 savecurrent=false}
C {gnd.sym} -390 110 0 0 {name=l2 lab=GND}
C {vsource.sym} 1300 -340 2 0 {name=VDD value=1.5 savecurrent=false
}
C {gnd.sym} 1300 -440 2 0 {name=l3 lab=GND
}
C {code.sym} 820 -840 0 0 {name=NGSPICE1 only_toplevel=false value="
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
C {devices/code_shown.sym} -540 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 140 200 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 1400 -850 0 0 {name=NGSPICE only_toplevel=false value="
.temp 27
.control
save all
dc Vi -1.0 1.0 0.01
let iout = i(vp)-i(vn)
let gm = deriv(iout)
plot i(vp)
plot i(vn)
plot iout
plot gm
*let out = vop-von
*plot out
op
write gm2_tb.raw
.endc
"}
C {gm2.sym} 240 0 0 0 {name=x1
}
C {single_to_diff.sym} -190 -10 0 0 {name=x2}
C {gnd.sym} 270 90 0 0 {name=l1 lab=GND}
C {isource.sym} 210 -120 0 0 {name=Ibias value=2.3u}
C {cmfb.sym} 1290 0 0 0 {name=x3
}
C {gnd.sym} 1300 110 0 0 {name=l4 lab=GND
}
C {gnd.sym} 1890 110 0 0 {name=l5 lab=GND
}
C {vsource.sym} 1930 -250 2 0 {name=Vcm value=0.75 savecurrent=false
}
C {gnd.sym} 1930 -360 2 0 {name=l6 lab=GND
}
C {lab_pin.sym} 710 140 0 1 {name=p1 sig_type=std_logic lab=Vop
}
C {lab_pin.sym} 770 150 0 1 {name=p2 sig_type=std_logic lab=Von
}
C {cmfb_ideal.sym} 1900 0 0 1 {name=x4
}
C {lab_pin.sym} 1850 -170 0 0 {name=p3 sig_type=std_logic lab=V_actuall
}
C {lab_pin.sym} 1630 0 1 0 {name=p4 sig_type=std_logic lab=VFB
spice_ignore=short}
C {vsource.sym} 710 260 0 0 {name=Vp value=0 savecurrent=false
}
C {vsource.sym} 770 270 0 0 {name=Vn value=0 savecurrent=false
}
C {res.sym} 740 340 1 0 {name=R2
value=500k
footprint=1206
device=resistor
m=1
}
C {isource.sym} 1250 -170 0 0 {name=Ibias1 value=2.3u
}
