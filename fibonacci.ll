; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

define i32 @fibonacci(i32 %n) {
entry:
  %total = alloca i32, align 4
  %c = alloca i32, align 4
  %next = alloca i32, align 4
  %second = alloca i32, align 4
  %first = alloca i32, align 4
  %n1 = alloca i32, align 4
  store i32 %n, ptr %n1, align 4
  store i32 0, ptr %first, align 4
  store i32 0, ptr %second, align 4
  store i32 0, ptr %next, align 4
  store i32 0, ptr %c, align 4
  store i32 0, ptr %total, align 4
  %n2 = load i32, ptr %n1, align 4
  %calltmp = call i32 @print_int(i32 %n2)
  %first3 = load i32, ptr %first, align 4
  %first4 = load i32, ptr %first, align 4
  store i32 0, ptr %first, align 4
  %second5 = load i32, ptr %second, align 4
  %second6 = load i32, ptr %second, align 4
  store i32 1, ptr %second, align 4
  %c7 = load i32, ptr %c, align 4
  %c8 = load i32, ptr %c, align 4
  store i32 1, ptr %c, align 4
  %total9 = load i32, ptr %total, align 4
  %total10 = load i32, ptr %total, align 4
  store i32 0, ptr %total, align 4
  %c11 = load i32, ptr %c, align 4
  %n12 = load i32, ptr %n1, align 4
  %cmptmp = icmp slt i32 %c11, %n12
  br i1 %cmptmp, label %loop, label %afterloop

loop:                                             ; preds = %ifcont, %entry
  %c13 = load i32, ptr %c, align 4
  %cmptmp14 = icmp sle i32 %c13, 1
  br i1 %cmptmp14, label %then, label %else

afterloop:                                        ; preds = %ifcont, %entry
  %total42 = load i32, ptr %total, align 4
  %calltmp43 = call i32 @print_int(i32 %total42)
  %total44 = load i32, ptr %total, align 4
  ret i32 %total44

then:                                             ; preds = %loop
  %c15 = load i32, ptr %c, align 4
  %next16 = load i32, ptr %next, align 4
  %next17 = load i32, ptr %next, align 4
  store i32 %c15, ptr %next, align 4
  br label %ifcont

else:                                             ; preds = %loop
  %first18 = load i32, ptr %first, align 4
  %second19 = load i32, ptr %second, align 4
  %addtmp = add i32 %first18, %second19
  %next20 = load i32, ptr %next, align 4
  %next21 = load i32, ptr %next, align 4
  store i32 %addtmp, ptr %next, align 4
  %second22 = load i32, ptr %second, align 4
  %first23 = load i32, ptr %first, align 4
  %first24 = load i32, ptr %first, align 4
  store i32 %second22, ptr %first, align 4
  %next25 = load i32, ptr %next, align 4
  %second26 = load i32, ptr %second, align 4
  %second27 = load i32, ptr %second, align 4
  store i32 %next25, ptr %second, align 4
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %iftmp = phi i32 [ %c15, %then ], [ %next25, %else ]
  %next28 = load i32, ptr %next, align 4
  %calltmp29 = call i32 @print_int(i32 %next28)
  %c30 = load i32, ptr %c, align 4
  %addtmp31 = add i32 %c30, 1
  %c32 = load i32, ptr %c, align 4
  %c33 = load i32, ptr %c, align 4
  store i32 %addtmp31, ptr %c, align 4
  %total34 = load i32, ptr %total, align 4
  %next35 = load i32, ptr %next, align 4
  %addtmp36 = add i32 %total34, %next35
  %total37 = load i32, ptr %total, align 4
  %total38 = load i32, ptr %total, align 4
  store i32 %addtmp36, ptr %total, align 4
  %c39 = load i32, ptr %c, align 4
  %n40 = load i32, ptr %n1, align 4
  %cmptmp41 = icmp slt i32 %c39, %n40
  br i1 %cmptmp41, label %loop, label %afterloop
}

declare i32 @print_int(i32)
