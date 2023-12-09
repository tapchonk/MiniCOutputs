; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

define i32 @multiplyNumbers(i32 %n) {
entry:
  %result = alloca i32, align 4
  %n1 = alloca i32, align 4
  store i32 %n, ptr %n1, align 4
  store i32 0, ptr %result, align 4
  %result2 = load i32, ptr %result, align 4
  %result3 = load i32, ptr %result, align 4
  store i32 0, ptr %result, align 4
  %n4 = load i32, ptr %n1, align 4
  %cmptmp = icmp sge i32 %n4, 1
  br i1 %cmptmp, label %then, label %else

then:                                             ; preds = %entry
  %n5 = load i32, ptr %n1, align 4
  %n6 = load i32, ptr %n1, align 4
  %subtmp = sub i32 %n6, 1
  %calltmp = call i32 @multiplyNumbers(i32 %subtmp)
  %multmp = mul i32 %n5, %calltmp
  %result7 = load i32, ptr %result, align 4
  %result8 = load i32, ptr %result, align 4
  store i32 %multmp, ptr %result, align 4
  br label %ifcont

else:                                             ; preds = %entry
  %result9 = load i32, ptr %result, align 4
  %result10 = load i32, ptr %result, align 4
  store i32 1, ptr %result, align 4
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %iftmp = phi i32 [ %multmp, %then ], [ 1, %else ]
  %result11 = load i32, ptr %result, align 4
  ret i32 %result11
}

define i32 @rfact(i32 %n) {
entry:
  %n1 = alloca i32, align 4
  store i32 %n, ptr %n1, align 4
  %n2 = load i32, ptr %n1, align 4
  %calltmp = call i32 @multiplyNumbers(i32 %n2)
  ret i32 %calltmp
}
