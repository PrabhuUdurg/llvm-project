# RUN: llvm-exegesis -mtriple=x86_64-unknown-unknown -mcpu=x86-64 -mode=latency --benchmark-phase=assemble-measured-code -opcode-name=CMOV32rr -repetition-mode=duplicate | FileCheck %s
# RUN: llvm-exegesis -mtriple=x86_64-unknown-unknown -mcpu=x86-64 -mode=latency --benchmark-phase=assemble-measured-code -opcode-name=CMOV32rr -repetition-mode=loop | FileCheck %s
# RUN: llvm-exegesis -mtriple=x86_64-unknown-unknown -mcpu=x86-64 -mode=latency --benchmark-phase=assemble-measured-code -opcode-name=CMOV32rr -repetition-mode=min | FileCheck %s

CHECK:      ---
CHECK-NEXT: mode: latency
CHECK-NEXT: key:
CHECK-NEXT:   instructions:
CHECK-NEXT:     'CMOV32rr {{.*}} i_0x{{[0-9a-f]}}'
CHECK-NEXT: config: ''
CHECK-DAG: ...
