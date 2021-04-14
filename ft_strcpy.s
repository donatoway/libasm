        global     _ft_strcpy
        section   .text
_ft_strcpy:
            mov     rax, -1
            cmp     rsi, 0x0
            je      _end
_loop:
            inc     rax
            cmp     byte[rsi + rax],0x0
            je      _end
_copy:
            mov     dl, byte [rsi + rax]
            mov     byte [rdi + rax], dl
            jmp     _loop
_end:
            mov     byte [rdi + rax], 0x0
            mov     rax, rdi
            ret
