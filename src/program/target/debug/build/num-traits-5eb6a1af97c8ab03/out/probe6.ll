; ModuleID = 'probe6.3d6d369e-cgu.0'
source_filename = "probe6.3d6d369e-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.7.0"

%"std::panic::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc1 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/59eed8a2aac0230a8b53e89d4e99d55912ba6b35/library/core/src/num/mod.rs" }>, align 1
@alloc2 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc1, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\15\03\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe6::probe
; Function Attrs: uwtable
define void @_ZN6probe65probe17h05c2bc642e4ecbefE() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17hf013f85460bd0405E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h4ae73fe66a8fce9cE([0 x i8]* nonnull align 1 bitcast ([25 x i8]* @str.0 to [0 x i8]*), i64 25, %"std::panic::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc2 to %"std::panic::Location"*))
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17hf013f85460bd0405E.exit": ; preds = %start
  br label %bb1

bb1:                                              ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17hf013f85460bd0405E.exit"
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h4ae73fe66a8fce9cE([0 x i8]* nonnull align 1, i64, %"std::panic::Location"* align 8 dereferenceable(24)) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="all" "probe-stack"="__rust_probestack" "target-cpu"="core2" }
attributes #1 = { nofree nosync nounwind readnone willreturn }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="all" "probe-stack"="__rust_probestack" "target-cpu"="core2" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
