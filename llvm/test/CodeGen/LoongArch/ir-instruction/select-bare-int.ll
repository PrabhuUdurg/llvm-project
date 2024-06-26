; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc --mtriple=loongarch32 -mattr=+d < %s | FileCheck %s --check-prefix=LA32
; RUN: llc --mtriple=loongarch64 -mattr=+d < %s | FileCheck %s --check-prefix=LA64

;; Exercise the bare integers 'select' LLVM IR: https://llvm.org/docs/LangRef.html#select-instruction

define i1 @bare_select_i1(i1 %a, i1 %b, i1 %c) {
; LA32-LABEL: bare_select_i1:
; LA32:       # %bb.0:
; LA32-NEXT:    andi $a0, $a0, 1
; LA32-NEXT:    masknez $a2, $a2, $a0
; LA32-NEXT:    maskeqz $a0, $a1, $a0
; LA32-NEXT:    or $a0, $a0, $a2
; LA32-NEXT:    ret
;
; LA64-LABEL: bare_select_i1:
; LA64:       # %bb.0:
; LA64-NEXT:    andi $a0, $a0, 1
; LA64-NEXT:    masknez $a2, $a2, $a0
; LA64-NEXT:    maskeqz $a0, $a1, $a0
; LA64-NEXT:    or $a0, $a0, $a2
; LA64-NEXT:    ret
  %res = select i1 %a, i1 %b, i1 %c
  ret i1 %res
}

define i8 @bare_select_i8(i1 %a, i8 %b, i8 %c) {
; LA32-LABEL: bare_select_i8:
; LA32:       # %bb.0:
; LA32-NEXT:    andi $a0, $a0, 1
; LA32-NEXT:    masknez $a2, $a2, $a0
; LA32-NEXT:    maskeqz $a0, $a1, $a0
; LA32-NEXT:    or $a0, $a0, $a2
; LA32-NEXT:    ret
;
; LA64-LABEL: bare_select_i8:
; LA64:       # %bb.0:
; LA64-NEXT:    andi $a0, $a0, 1
; LA64-NEXT:    masknez $a2, $a2, $a0
; LA64-NEXT:    maskeqz $a0, $a1, $a0
; LA64-NEXT:    or $a0, $a0, $a2
; LA64-NEXT:    ret
  %res = select i1 %a, i8 %b, i8 %c
  ret i8 %res
}

define i16 @bare_select_i16(i1 %a, i16 %b, i16 %c) {
; LA32-LABEL: bare_select_i16:
; LA32:       # %bb.0:
; LA32-NEXT:    andi $a0, $a0, 1
; LA32-NEXT:    masknez $a2, $a2, $a0
; LA32-NEXT:    maskeqz $a0, $a1, $a0
; LA32-NEXT:    or $a0, $a0, $a2
; LA32-NEXT:    ret
;
; LA64-LABEL: bare_select_i16:
; LA64:       # %bb.0:
; LA64-NEXT:    andi $a0, $a0, 1
; LA64-NEXT:    masknez $a2, $a2, $a0
; LA64-NEXT:    maskeqz $a0, $a1, $a0
; LA64-NEXT:    or $a0, $a0, $a2
; LA64-NEXT:    ret
  %res = select i1 %a, i16 %b, i16 %c
  ret i16 %res
}

define i32 @bare_select_i32(i1 %a, i32 %b, i32 %c) {
; LA32-LABEL: bare_select_i32:
; LA32:       # %bb.0:
; LA32-NEXT:    andi $a0, $a0, 1
; LA32-NEXT:    masknez $a2, $a2, $a0
; LA32-NEXT:    maskeqz $a0, $a1, $a0
; LA32-NEXT:    or $a0, $a0, $a2
; LA32-NEXT:    ret
;
; LA64-LABEL: bare_select_i32:
; LA64:       # %bb.0:
; LA64-NEXT:    andi $a0, $a0, 1
; LA64-NEXT:    masknez $a2, $a2, $a0
; LA64-NEXT:    maskeqz $a0, $a1, $a0
; LA64-NEXT:    or $a0, $a0, $a2
; LA64-NEXT:    ret
  %res = select i1 %a, i32 %b, i32 %c
  ret i32 %res
}

define i64 @bare_select_i64(i1 %a, i64 %b, i64 %c) {
; LA32-LABEL: bare_select_i64:
; LA32:       # %bb.0:
; LA32-NEXT:    andi $a5, $a0, 1
; LA32-NEXT:    masknez $a0, $a3, $a5
; LA32-NEXT:    maskeqz $a1, $a1, $a5
; LA32-NEXT:    or $a0, $a1, $a0
; LA32-NEXT:    masknez $a1, $a4, $a5
; LA32-NEXT:    maskeqz $a2, $a2, $a5
; LA32-NEXT:    or $a1, $a2, $a1
; LA32-NEXT:    ret
;
; LA64-LABEL: bare_select_i64:
; LA64:       # %bb.0:
; LA64-NEXT:    andi $a0, $a0, 1
; LA64-NEXT:    masknez $a2, $a2, $a0
; LA64-NEXT:    maskeqz $a0, $a1, $a0
; LA64-NEXT:    or $a0, $a0, $a2
; LA64-NEXT:    ret
  %res = select i1 %a, i64 %b, i64 %c
  ret i64 %res
}

define i16 @bare_select_zero_i16(i1 %a, i16 %b) {
; LA32-LABEL: bare_select_zero_i16:
; LA32:       # %bb.0:
; LA32-NEXT:    andi $a0, $a0, 1
; LA32-NEXT:    masknez	$a0, $a1, $a0
; LA32-NEXT:    ret
;
; LA64-LABEL: bare_select_zero_i16:
; LA64:       # %bb.0:
; LA64-NEXT:    andi $a0, $a0, 1
; LA64-NEXT:    masknez	$a0, $a1, $a0
; LA64-NEXT:    ret
  %res = select i1 %a, i16 0, i16 %b
  ret i16 %res
}

define i32 @bare_select_zero_i32(i1 %a, i32 %b) {
; LA32-LABEL: bare_select_zero_i32:
; LA32:       # %bb.0:
; LA32-NEXT:    andi $a0, $a0, 1
; LA32-NEXT:    maskeqz $a0, $a1, $a0
; LA32-NEXT:    ret
;
; LA64-LABEL: bare_select_zero_i32:
; LA64:       # %bb.0:
; LA64-NEXT:    andi $a0, $a0, 1
; LA64-NEXT:    maskeqz $a0, $a1, $a0
; LA64-NEXT:    ret
  %res = select i1 %a, i32 %b, i32 0
  ret i32 %res
}
