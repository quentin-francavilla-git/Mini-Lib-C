    BITS 64

    SECTION .text

    GLOBAL strncmp

strncmp:
    mov rax, 0
    cmp rdx, 0
    je end

loop:
    cmp rdx, 0
    je end
    mov r12b, BYTE [rdi]
    mov r13b, BYTE [rsi]
    cmp r12b, r13b
    jne not_egal
    cmp r12b, 0
    je end
    inc rdi
    inc rsi
    dec rdx
    jmp loop

not_egal:
    dec rsi
    movzx rax, r12b
    movzx rcx, r13b
    sub rax, rcx

end:
    ret