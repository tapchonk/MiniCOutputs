; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

define void @Void() {
entry:
  %result = alloca i32, align 4
  store i32 0, ptr %result, align 4
  %result1 = load i32, ptr %result, align 4
  %result2 = load i32, ptr %result, align 4
  store i32 0, ptr %result, align 4
  %result3 = load i32, ptr %result, align 4
  %calltmp = call i32 @print_int(i32 %result3)
  %result4 = load i32, ptr %result, align 4
  %cmptmp = icmp slt i32 %result4, 10
  br i1 %cmptmp, label %loop, label %afterloop

loop:                                             ; preds = %loop, %entry
  %result5 = load i32, ptr %result, align 4
  %addtmp = add i32 %result5, 1
  %result6 = load i32, ptr %result, align 4
  %result7 = load i32, ptr %result, align 4
  store i32 %addtmp, ptr %result, align 4
  %result8 = load i32, ptr %result, align 4
  %calltmp9 = call i32 @print_int(i32 %result8)
  %result10 = load i32, ptr %result, align 4
  %cmptmp11 = icmp slt i32 %result10, 10
  br i1 %cmptmp11, label %loop, label %afterloop

afterloop:                                        ; preds = %loop, %entry
  ret void
}

declare i32 @print_int(i32)
