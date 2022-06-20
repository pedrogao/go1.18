
TEXT ·entry(SB), $0-0
    MOVL    $33, DI
    MOVL    $231, AX  // exitgroup - force all os threads to exit
    SYSCALL
    RET

