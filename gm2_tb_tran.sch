v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 40 70 40 {lab=#net1}
N -10 60 70 60 {lab=#net2}
N 250 130 250 160 {lab=GND}
N -340 60 -310 60 {lab=#net3}
N -340 60 -340 90 {lab=#net3}
N -340 150 -340 190 {lab=GND}
N 290 -140 290 10 {lab=#net4}
N 290 -270 290 -200 {lab=GND}
N 170 -140 170 10 {lab=#net4}
N 190 -140 290 -140 {lab=#net4}
N 190 -10 190 10 {lab=#net5}
N 190 -140 190 -70 {lab=#net4}
N 170 -140 190 -140 {lab=#net4}
N 370 80 470 80 {lab=#net6}
N 370 60 580 60 {lab=#net7}
N 470 80 470 100 {lab=#net6}
N 470 160 470 180 {lab=GND}
N 580 60 580 100 {lab=#net7}
N 580 160 580 190 {lab=GND}
C {gm2.sym} 220 70 0 0 {name=x1}
C {single_to_diff.sym} -160 60 0 0 {name=x2}
C {gnd.sym} 250 160 0 0 {name=l1 lab=GND}
C {gnd.sym} -340 190 0 0 {name=l2 lab=GND}
C {vsource.sym} -340 120 0 0 {name=Vi value=0 savecurrent=false}
C {vsource.sym} 290 -170 2 0 {name=VDD value=1.5 savecurrent=false}
C {gnd.sym} 290 -270 2 0 {name=l3 lab=GND}
C {isource.sym} 190 -40 0 0 {name=Ibias value=3.2u}
C {code.sym} 1470 -310 0 0 {name=NGSPICE1 only_toplevel=false value="
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
"}
C {code_shown.sym} 780 -390 0 0 {name=NGSPICE only_toplevel=false value="
.temp 27
.control
save all
tran 0.1u 10u
let iod = i(vp)- i(vn)
let f_sig = 32
let f_min = 0.1
let f_max = 128
linearize iod
fft iod

let N = length(iod)
let fres = frequency[n-1]/n
let fmin_idx = ceil(const.f_min/fres)
let fmax_idx = ceil(const.f_max/fres)

let iod_spec = mag(iod)
let iod_spec_slice = iod_spec[fmin_idx,fmax_idx]
let freq = frequency[fmin_idx,fmax_idx]
meas sp iod_max max iod_spec_slice
let iod_spec_db = 20*log10(iod_spec_slice/iod_max)
plot iod_spec_db vs freq

** Calc HD2, HD3
let sig_idx = ceil(const.f_sig/fres)
let hd2_idx = 2*sig_idx
let hd3_idx = 3*sig_idx
let sig_pwr = iod_spec[sig_idx-1]^2+iod_spec[sig_idx]^2+iod_spec[sig_idx+1]^2
let hd2_pwr = iod_spec[hd2_idx-1]^2+iod_spec[hd2_idx]^2+iod_spec[hd2_idx+1]^2
let hd3_pwr = iod_spec[hd3_idx-1]^2+iod_spec[hd3_idx]^2+iod_spec[hd3_idx+1]^2
let hd2 = sqrt(hd2_pwr/sig_pwr)
let hd3 = sqrt(hd3_pwr/sig_pwr)
let hd2_dB = 20*log10(hd2)
let hd3_dB = 20*log10(hd3)
setscale freq
write gm2_tb_tran.raw
.endc
"}
C {devices/code_shown.sym} -390 -230 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {gnd.sym} 470 180 0 0 {name=l4 lab=GND}
C {gnd.sym} 580 190 0 0 {name=l5 lab=GND}
C {vsource.sym} 470 130 0 0 {name=Vp value=0 savecurrent=false}
C {vsource.sym} 580 130 0 0 {name=Vn value=0 savecurrent=false}
