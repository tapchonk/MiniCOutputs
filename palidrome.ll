; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

define i1 @palindrome(i32 %number) {
entry:
  %result = alloca i1, align 1
  %rmndr = alloca i32, align 4
  %rev = alloca i32, align 4
  %t = alloca i32, align 4
  %number1 = alloca i32, align 4
  store i32 %number, ptr %number1, align 4
  store i32 0, ptr %t, align 4
  store i32 0, ptr %rev, align 4
  store i32 0, ptr %rmndr, align 4
  store i1 false, ptr %result, align 1
  %rev2 = load i32, ptr %rev, align 4
  %rev3 = load i32, ptr %rev, align 4
  store i32 0, ptr %rev, align 4
  %result4 = load i1, ptr %result, align 1
  %result5 = load i1, ptr %result, align 1
  store i1 false, ptr %result, align 1
  %number6 = load i32, ptr %number1, align 4
  %t7 = load i32, ptr %t, align 4
  %t8 = load i32, ptr %t, align 4
  store i32 %number6, ptr %t, align 4
  %number9 = load i32, ptr %number1, align 4
  %cmptmp = icmp sgt i32 %number9, 0
  br i1 %cmptmp, label %loop, label %afterloop

loop:                                             ; preds = %loop, %entry
  %number10 = load i32, ptr %number1, align 4
  %modtmp = srem i32 %number10, 10
  %rmndr11 = load i32, ptr %rmndr, align 4
  %rmndr12 = load i32, ptr %rmndr, align 4
  store i32 %modtmp, ptr %rmndr, align 4
  %rev13 = load i32, ptr %rev, align 4
  %multmp = mul i32 %rev13, 10
  %rmndr14 = load i32, ptr %rmndr, align 4
  %addtmp = add i32 %multmp, %rmndr14
  %rev15 = load i32, ptr %rev, align 4
  %rev16 = load i32, ptr %rev, align 4
  store i32 %addtmp, ptr %rev, align 4
  %number17 = load i32, ptr %number1, align 4
  %divtmp = sdiv i32 %number17, 10
  %number18 = load i32, ptr %number1, align 4
  %number19 = load i32, ptr %number1, align 4
  store i32 %divtmp, ptr %number1, align 4
  %number20 = load i32, ptr %number1, align 4
  %cmptmp21 = icmp sgt i32 %number20, 0
  br i1 %cmptmp21, label %loop, label %afterloop

afterloop:                                        ; preds = %loop, %entry
  %t22 = load i32, ptr %t, align 4
  %rev23 = load i32, ptr %rev, align 4
  %cmptmp24 = icmp eq i32 %t22, %rev23
  br i1 %cmptmp24, label %then, label %else

then:                                             ; preds = %afterloop
  %result25 = load i1, ptr %result, align 1
  %result26 = load i1, ptr %result, align 1
  store i1 true, ptr %result, align 1
  br label %ifcont

else:                                             ; preds = %afterloop
  %result27 = load i1, ptr %result, align 1
  %result28 = load i1, ptr %result, align 1
  store i1 false, ptr %result, align 1
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %iftmp = phi i1 [ true, %then ], [ false, %else ]
  %result29 = load i1, ptr %result, align 1
  ret i1 %result29
}
