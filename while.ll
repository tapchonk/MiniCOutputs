; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

@test = common global i32 0
@f = common global float 0.000000e+00
@b = common global i1 false

define i32 @While(i32 %n) {
entry:
  %result = alloca i32, align 4
  %n1 = alloca i32, align 4
  store i32 %n, ptr %n1, align 4
  store i32 0, ptr %result, align 4
  store i32 12, ptr @test, align 4
  %result2 = load i32, ptr %result, align 4
  %result3 = load i32, ptr %result, align 4
  store i32 0, ptr %result, align 4
  %test = load i32, ptr @test, align 4
  %calltmp = call i32 @print_int(i32 %test)
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
  %cmptmp9 = icmp slt i32 %result8, 10
  br i1 %cmptmp9, label %loop, label %afterloop

afterloop:                                        ; preds = %loop, %entry
  %result10 = load i32, ptr %result, align 4
  ret i32 %result10
}

declare i32 @print_int(i32)
