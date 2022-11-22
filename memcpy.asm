    BITS 64

    SECTION .text

    GLOBAL memcpy

memcpy:
    cmp rdx, 0
    jl end
    mov r10, rdx
    mov rax, 0

loop:
    cmp rdx, 0
    je dec_rdi
    mov r8b, BYTE [rsi]
    mov BYTE [rdi], r8b
    dec rdx
    inc rdi
    inc rsi
    jmp loop

dec_rdi:
    cmp r10, 0
    je end
    dec rdi
    dec r10
    jmp dec_rdi

end:
    mov rax, rdi
    ret