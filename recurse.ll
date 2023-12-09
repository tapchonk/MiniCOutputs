; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

define i32 @addNumbers(i32 %n) {
entry:
  %result = alloca i32, align 4
  %n1 = alloca i32, align 4
  store i32 %n, ptr %n1, align 4
  store i32 0, ptr %result, align 4
  %result2 = load i32, ptr %result, align 4
  %result3 = load i32, ptr %result, align 4
  store i32 0, ptr %result, align 4
  %n4 = load i32, ptr %n1, align 4
  %cmptmp = icmp ne i32 %n4, 0
  br i1 %cmptmp, label %then, label %else

then:                                             ; preds = %entry
  %n5 = load i32, ptr %n1, align 4
  %n6 = load i32, ptr %n1, align 4
  %subtmp = sub i32 %n6, 1
  %calltmp = call i32 @addNumbers(i32 %subtmp)
  %addtmp = add i32 %n5, %calltmp
  %result7 = load i32, ptr %result, align 4
  %result8 = load i32, ptr %result, align 4
  store i32 %addtmp, ptr %result, align 4
  br label %ifcont

else:                                             ; preds = %entry
  %n9 = load i32, ptr %n1, align 4
  %result10 = load i32, ptr %result, align 4
  %result11 = load i32, ptr %result, align 4
  store i32 %n9, ptr %result, align 4
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %iftmp = phi i32 [ %addtmp, %then ], [ %n9, %else ]
  %result12 = load i32, ptr %result, align 4
  %calltmp13 = call i32 @print_int(i32 %result12)
  %result14 = load i32, ptr %result, align 4
  ret i32 %result14
}

declare i32 @print_int(i32)

define i32 @recursion_driver(i32 %num) {
entry:
  %num1 = alloca i32, align 4
  store i32 %num, ptr %num1, align 4
  %num2 = load i32, ptr %num1, align 4
  %calltmp = call i32 @addNumbers(i32 %num2)
  ret i32 %calltmp
}
