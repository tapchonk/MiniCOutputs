; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

define float @pi() {
entry:
  %i = alloca i32, align 4
  %PI = alloca float, align 4
  %flag = alloca i1, align 1
  store i1 false, ptr %flag, align 1
  store float 0.000000e+00, ptr %PI, align 4
  store i32 0, ptr %i, align 4
  %flag1 = load i1, ptr %flag, align 1
  %flag2 = load i1, ptr %flag, align 1
  store i1 true, ptr %flag, align 1
  %PI3 = load float, ptr %PI, align 4
  %PI4 = load float, ptr %PI, align 4
  store float 3.000000e+00, ptr %PI, align 4
  %i5 = load i32, ptr %i, align 4
  %i6 = load i32, ptr %i, align 4
  store i32 2, ptr %i, align 4
  %i7 = load i32, ptr %i, align 4
  %cmptmp = icmp slt i32 %i7, 100
  br i1 %cmptmp, label %loop, label %afterloop

loop:                                             ; preds = %ifcont, %entry
  %flag8 = load i1, ptr %flag, align 1
  br i1 %flag8, label %then, label %else

afterloop:                                        ; preds = %ifcont, %entry
  %PI38 = load float, ptr %PI, align 4
  ret float %PI38

then:                                             ; preds = %loop
  %PI9 = load float, ptr %PI, align 4
  %i10 = load i32, ptr %i, align 4
  %i11 = load i32, ptr %i, align 4
  %addtmp = add i32 %i11, 1
  %multmp = mul i32 %i10, %addtmp
  %i12 = load i32, ptr %i, align 4
  %addtmp13 = add i32 %i12, 2
  %multmp14 = mul i32 %multmp, %addtmp13
  %0 = sitofp i32 %multmp14 to float
  %divtmp = fdiv float 4.000000e+00, %0
  %addtmp15 = fadd float %PI9, %divtmp
  %PI16 = load float, ptr %PI, align 4
  %PI17 = load float, ptr %PI, align 4
  store float %addtmp15, ptr %PI, align 4
  br label %ifcont

else:                                             ; preds = %loop
  %PI18 = load float, ptr %PI, align 4
  %i19 = load i32, ptr %i, align 4
  %i20 = load i32, ptr %i, align 4
  %addtmp21 = add i32 %i20, 1
  %multmp22 = mul i32 %i19, %addtmp21
  %i23 = load i32, ptr %i, align 4
  %addtmp24 = add i32 %i23, 2
  %multmp25 = mul i32 %multmp22, %addtmp24
  %1 = sitofp i32 %multmp25 to float
  %divtmp26 = fdiv float 4.000000e+00, %1
  %subtmp = fsub float %PI18, %divtmp26
  %PI27 = load float, ptr %PI, align 4
  %PI28 = load float, ptr %PI, align 4
  store float %subtmp, ptr %PI, align 4
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %iftmp = phi float [ %addtmp15, %then ], [ %subtmp, %else ]
  %flag29 = load i1, ptr %flag, align 1
  %nottmp = xor i1 %flag29, true
  %flag30 = load i1, ptr %flag, align 1
  %flag31 = load i1, ptr %flag, align 1
  store i1 %nottmp, ptr %flag, align 1
  %i32 = load i32, ptr %i, align 4
  %addtmp33 = add i32 %i32, 2
  %i34 = load i32, ptr %i, align 4
  %i35 = load i32, ptr %i, align 4
  store i32 %addtmp33, ptr %i, align 4
  %i36 = load i32, ptr %i, align 4
  %cmptmp37 = icmp slt i32 %i36, 100
  br i1 %cmptmp37, label %loop, label %afterloop
}
