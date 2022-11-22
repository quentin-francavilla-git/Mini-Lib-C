    BITS 64

    SECTION .text

    GLOBAL strcmp

strcmp:
    mov rax, 0

loop:
    mov r12b, BYTE [rdi]
    mov r13b, BYTE [rsi]
    cmp r12b, 0
    je end
    cmp r13b, 0
    je end
    cmp r13b, r12b
    jne end
    inc rdi
    inc rsi
    jmp loop

end:
    movzx rax, r12b
    movzx rcx, r13b
    sub rax, rcx
    ret