; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

define float @cosine(float %x) {
entry:
  %alt = alloca float, align 4
  %eps = alloca float, align 4
  %term = alloca float, align 4
  %n = alloca float, align 4
  %cos = alloca float, align 4
  %x1 = alloca float, align 4
  store float %x, ptr %x1, align 4
  store float 0.000000e+00, ptr %cos, align 4
  store float 0.000000e+00, ptr %n, align 4
  store float 0.000000e+00, ptr %term, align 4
  store float 0.000000e+00, ptr %eps, align 4
  store float 0.000000e+00, ptr %alt, align 4
  %eps2 = load float, ptr %eps, align 4
  %eps3 = load float, ptr %eps, align 4
  store float 0x3EB0C6F7A0000000, ptr %eps, align 4
  %n4 = load float, ptr %n, align 4
  %n5 = load float, ptr %n, align 4
  store float 1.000000e+00, ptr %n, align 4
  %cos6 = load float, ptr %cos, align 4
  %cos7 = load float, ptr %cos, align 4
  store float 1.000000e+00, ptr %cos, align 4
  %term8 = load float, ptr %term, align 4
  %term9 = load float, ptr %term, align 4
  store float 1.000000e+00, ptr %term, align 4
  %alt10 = load float, ptr %alt, align 4
  %alt11 = load float, ptr %alt, align 4
  store float -1.000000e+00, ptr %alt, align 4
  %term12 = load float, ptr %term, align 4
  %eps13 = load float, ptr %eps, align 4
  %cmptmp = fcmp ogt float %term12, %eps13
  br i1 %cmptmp, label %loop, label %afterloop

loop:                                             ; preds = %loop, %entry
  %term14 = load float, ptr %term, align 4
  %x15 = load float, ptr %x1, align 4
  %multmp = fmul float %term14, %x15
  %x16 = load float, ptr %x1, align 4
  %multmp17 = fmul float %multmp, %x16
  %n18 = load float, ptr %n, align 4
  %divtmp = fdiv float %multmp17, %n18
  %n19 = load float, ptr %n, align 4
  %addtmp = fadd float %n19, 1.000000e+00
  %divtmp20 = fdiv float %divtmp, %addtmp
  %term21 = load float, ptr %term, align 4
  %term22 = load float, ptr %term, align 4
  store float %divtmp20, ptr %term, align 4
  %cos23 = load float, ptr %cos, align 4
  %alt24 = load float, ptr %alt, align 4
  %term25 = load float, ptr %term, align 4
  %multmp26 = fmul float %alt24, %term25
  %addtmp27 = fadd float %cos23, %multmp26
  %cos28 = load float, ptr %cos, align 4
  %cos29 = load float, ptr %cos, align 4
  store float %addtmp27, ptr %cos, align 4
  %alt30 = load float, ptr %alt, align 4
  %multmp31 = fmul float -1.000000e+00, %alt30
  %alt32 = load float, ptr %alt, align 4
  %alt33 = load float, ptr %alt, align 4
  store float %multmp31, ptr %alt, align 4
  %n34 = load float, ptr %n, align 4
  %addtmp35 = fadd float %n34, 2.000000e+00
  %n36 = load float, ptr %n, align 4
  %n37 = load float, ptr %n, align 4
  store float %addtmp35, ptr %n, align 4
  %term38 = load float, ptr %term, align 4
  %eps39 = load float, ptr %eps, align 4
  %cmptmp40 = fcmp ogt float %term38, %eps39
  br i1 %cmptmp40, label %loop, label %afterloop

afterloop:                                        ; preds = %loop, %entry
  %cos41 = load float, ptr %cos, align 4
  %calltmp = call float @print_float(float %cos41)
  %cos42 = load float, ptr %cos, align 4
  ret float %cos42
}

declare float @print_float(float)
