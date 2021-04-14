    global  _ft_strlen
_ft_strlen:
            mov     rax, 0
_while:
            cmp     byte[rdi + rax], 0x0
            je     _return
_increment:
            inc     rax
            jmp     _while
_return:
            ret     