; ModuleID = 'mini-c-comp'
source_filename = "mini-c-comp"

@mutable_var = common global i32 0

define i32 @mutating_function() {
entry:
  %mutable_var = load i32, ptr @mutable_var, align 4
  %addtmp = add i32 %mutable_var, 1
  store i32 %addtmp, ptr @mutable_var, align 4
  ret i32 1
}

define i32 @lazyeval_and(i32 %control) {
entry:
  %control1 = alloca i32, align 4
  store i32 %control, ptr %control1, align 4
  store i32 0, ptr @mutable_var, align 4
  %control2 = load i32, ptr %control1, align 4
  %cmptmp = icmp eq i32 %control2, 1
  br i1 %cmptmp, label %then, label %else

then:                                             ; preds = %entry
  %calltmp = call i32 @mutating_function()
  %cmptmp3 = icmp eq i32 0, %calltmp
  %nottmp = xor i1 %cmptmp3, true
  %andtmp = and i1 %cmptmp, %nottmp
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %iftmp = phi i1 [ %andtmp, %then ], [ false, %else ]
  br i1 %iftmp, label %then4, label %else5

then4:                                            ; preds = %ifcont
  %mutable_var = load i32, ptr @mutable_var, align 4
  ret i32 %mutable_var
  br label %ifcont7

else5:                                            ; preds = %ifcont
  %mutable_var6 = load i32, ptr @mutable_var, align 4
  ret i32 %mutable_var6
  br label %ifcont7

ifcont7:                                          ; preds = %else5, %then4
  ret i32 0
}

define i32 @lazyeval_or(i32 %control) {
entry:
  %control1 = alloca i32, align 4
  store i32 %control, ptr %control1, align 4
  store i32 0, ptr @mutable_var, align 4
  %control2 = load i32, ptr %control1, align 4
  %cmptmp = icmp eq i32 %control2, 1
  br i1 %cmptmp, label %then, label %else

then:                                             ; preds = %entry
  br label %ifcont

else:                                             ; preds = %entry
  %calltmp = call i32 @mutating_function()
  %cmptmp3 = icmp eq i32 0, %calltmp
  %nottmp = xor i1 %cmptmp3, true
  %ortmp = or i1 %cmptmp, %nottmp
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %iftmp = phi i1 [ true, %then ], [ %ortmp, %else ]
  br i1 %iftmp, label %then4, label %else5

then4:                                            ; preds = %ifcont
  %mutable_var = load i32, ptr @mutable_var, align 4
  ret i32 %mutable_var
  br label %ifcont7

else5:                                            ; preds = %ifcont
  %mutable_var6 = load i32, ptr @mutable_var, align 4
  ret i32 %mutable_var6
  br label %ifcont7

ifcont7:                                          ; preds = %else5, %then4
  ret i32 0
}
