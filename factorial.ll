; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

define i32 @factorial(i32 %n) {
entry:
  %factorial = alloca i32, align 4
  %i = alloca i32, align 4
  %n1 = alloca i32, align 4
  store i32 %n, ptr %n1, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %factorial, align 4
  %factorial2 = load i32, ptr %factorial, align 4
  %factorial3 = load i32, ptr %factorial, align 4
  store i32 1, ptr %factorial, align 4
  %i4 = load i32, ptr %i, align 4
  %i5 = load i32, ptr %i, align 4
  store i32 1, ptr %i, align 4
  %i6 = load i32, ptr %i, align 4
  %n7 = load i32, ptr %n1, align 4
  %cmptmp = icmp sle i32 %i6, %n7
  br i1 %cmptmp, label %loop, label %afterloop

loop:                                             ; preds = %loop, %entry
  %factorial8 = load i32, ptr %factorial, align 4
  %i9 = load i32, ptr %i, align 4
  %multmp = mul i32 %factorial8, %i9
  %factorial10 = load i32, ptr %factorial, align 4
  %factorial11 = load i32, ptr %factorial, align 4
  store i32 %multmp, ptr %factorial, align 4
  %i12 = load i32, ptr %i, align 4
  %addtmp = add i32 %i12, 1
  %i13 = load i32, ptr %i, align 4
  %i14 = load i32, ptr %i, align 4
  store i32 %addtmp, ptr %i, align 4
  %i15 = load i32, ptr %i, align 4
  %n16 = load i32, ptr %n1, align 4
  %cmptmp17 = icmp sle i32 %i15, %n16
  br i1 %cmptmp17, label %loop, label %afterloop

afterloop:                                        ; preds = %loop, %entry
  %factorial18 = load i32, ptr %factorial, align 4
  ret i32 %factorial18
}
