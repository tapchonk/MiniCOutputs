; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

define i32 @addition(i32 %n, i32 %m) {
entry:
  %result = alloca i32, align 4
  %m2 = alloca i32, align 4
  %n1 = alloca i32, align 4
  store i32 %n, ptr %n1, align 4
  store i32 %m, ptr %m2, align 4
  store i32 0, ptr %result, align 4
  %n3 = load i32, ptr %n1, align 4
  %m4 = load i32, ptr %m2, align 4
  %addtmp = add i32 %n3, %m4
  %result5 = load i32, ptr %result, align 4
  %result6 = load i32, ptr %result, align 4
  store i32 %addtmp, ptr %result, align 4
  %n7 = load i32, ptr %n1, align 4
  %cmptmp = icmp eq i32 %n7, 4
  br i1 %cmptmp, label %then, label %else

then:                                             ; preds = %entry
  %n8 = load i32, ptr %n1, align 4
  %m9 = load i32, ptr %m2, align 4
  %addtmp10 = add i32 %n8, %m9
  %calltmp = call i32 @print_int(i32 %addtmp10)
  br label %ifcont

else:                                             ; preds = %entry
  %n11 = load i32, ptr %n1, align 4
  %m12 = load i32, ptr %m2, align 4
  %multmp = mul i32 %n11, %m12
  %calltmp13 = call i32 @print_int(i32 %multmp)
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %iftmp = phi i32 [ %calltmp, %then ], [ %calltmp13, %else ]
  %result14 = load i32, ptr %result, align 4
  ret i32 %result14
}

declare i32 @print_int(i32)
