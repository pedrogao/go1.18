#include "textflag.h"

DATA  msg<>+0x00(SB)/6, $"Hello "
DATA  msg<>+0x06(SB)/8, $"Minimal\n"
GLOBL msg<>(SB), NOPTR, $14

TEXT ·say(SB), NOSPLIT, $0
  MOVL    $1, AX          // 在 Go 中 sys_write 系统调用数字编号为  1
  MOVQ    $1, DI          // 第 1 个参数 stdout 编号 1
  LEAQ    msg<>(SB), SI   // 第 2 个参数 msg 指针地址
  MOVL    $12, DX         // 第 3 个参数 count，字符串长度
  SYSCALL                 // 系统调用
  RE

TEXT ·x(SB),0,$0
    RET
