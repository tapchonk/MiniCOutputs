; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

define float @unary(i32 %n, float %m) {
entry:
  %sum = alloca float, align 4
  %result = alloca float, align 4
  %m2 = alloca float, align 4
  %n1 = alloca i32, align 4
  store i32 %n, ptr %n1, align 4
  store float %m, ptr %m2, align 4
  store float 0.000000e+00, ptr %result, align 4
  store float 0.000000e+00, ptr %sum, align 4
  %sum3 = load float, ptr %sum, align 4
  %sum4 = load float, ptr %sum, align 4
  store float 0.000000e+00, ptr %sum, align 4
  %n5 = load i32, ptr %n1, align 4
  %m6 = load float, ptr %m2, align 4
  %0 = sitofp i32 %n5 to float
  %addtmp = fadd float %0, %m6
  %result7 = load float, ptr %result, align 4
  %result8 = load float, ptr %result, align 4
  store float %addtmp, ptr %result, align 4
  %result9 = load float, ptr %result, align 4
  %calltmp = call float @print_float(float %result9)
  %sum10 = load float, ptr %sum, align 4
  %result11 = load float, ptr %result, align 4
  %addtmp12 = fadd float %sum10, %result11
  %sum13 = load float, ptr %sum, align 4
  %sum14 = load float, ptr %sum, align 4
  store float %addtmp12, ptr %sum, align 4
  %n15 = load i32, ptr %n1, align 4
  %m16 = load float, ptr %m2, align 4
  %multmp = fmul float -1.000000e+00, %m16
  %1 = sitofp i32 %n15 to float
  %addtmp17 = fadd float %1, %multmp
  %result18 = load float, ptr %result, align 4
  %result19 = load float, ptr %result, align 4
  store float %addtmp17, ptr %result, align 4
  %result20 = load float, ptr %result, align 4
  %calltmp21 = call float @print_float(float %result20)
  %sum22 = load float, ptr %sum, align 4
  %result23 = load float, ptr %result, align 4
  %addtmp24 = fadd float %sum22, %result23
  %sum25 = load float, ptr %sum, align 4
  %sum26 = load float, ptr %sum, align 4
  store float %addtmp24, ptr %sum, align 4
  %n27 = load i32, ptr %n1, align 4
  %m28 = load float, ptr %m2, align 4
  %multmp29 = fmul float -1.000000e+00, %m28
  %multmp30 = fmul float -1.000000e+00, %multmp29
  %2 = sitofp i32 %n27 to float
  %addtmp31 = fadd float %2, %multmp30
  %result32 = load float, ptr %result, align 4
  %result33 = load float, ptr %result, align 4
  store float %addtmp31, ptr %result, align 4
  %result34 = load float, ptr %result, align 4
  %calltmp35 = call float @print_float(float %result34)
  %sum36 = load float, ptr %sum, align 4
  %result37 = load float, ptr %result, align 4
  %addtmp38 = fadd float %sum36, %result37
  %sum39 = load float, ptr %sum, align 4
  %sum40 = load float, ptr %sum, align 4
  store float %addtmp38, ptr %sum, align 4
  %n41 = load i32, ptr %n1, align 4
  %multmp42 = mul i32 -1, %n41
  %m43 = load float, ptr %m2, align 4
  %multmp44 = fmul float -1.000000e+00, %m43
  %3 = sitofp i32 %multmp42 to float
  %addtmp45 = fadd float %3, %multmp44
  %result46 = load float, ptr %result, align 4
  %result47 = load float, ptr %result, align 4
  store float %addtmp45, ptr %result, align 4
  %result48 = load float, ptr %result, align 4
  %calltmp49 = call float @print_float(float %result48)
  %sum50 = load float, ptr %sum, align 4
  %result51 = load float, ptr %result, align 4
  %addtmp52 = fadd float %sum50, %result51
  %sum53 = load float, ptr %sum, align 4
  %sum54 = load float, ptr %sum, align 4
  store float %addtmp52, ptr %sum, align 4
  %sum55 = load float, ptr %sum, align 4
  ret float %sum55
}

declare float @print_float(float)
