        global  _ft_strcmp
        section .text
_ft_strcmp:
            mov    rax, -1
_start:
            inc     rax
            movzx   rcx, byte [rdi + rax]
            movzx   rbx, byte [rsi + rax]
            cmp     rbx, 0x0
            je      _compare_if_end
            cmp     rcx, rbx
            je      _start
            jmp     _compare

_compare_if_end:
            cmp     rcx, 0x0
            je      _ret_if_equal
            jmp     _ret_if_not_equal
_compare:
            cmp     rcx, rbx
            je      _ret_if_equal
            jmp     _diff
_diff: 
            cmp     rbx,rcx
            je      _ret_if_equal
            jmp     _ret_if_not_equal
_ret_if_not_equal:
            cmp     rcx, rbx
            jl      _if_less
            mov     rax, 1
            ret
_if_less:
            mov     rax, -1
            ret
_ret_if_equal:
            mov     rax, 0
            ret        