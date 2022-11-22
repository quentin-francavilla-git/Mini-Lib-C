    BITS 64

    SECTION .text

    GLOBAL strlen

strlen:
    mov rax, 0

loop:
    cmp BYTE [rdi], 0
    je end
    inc rdi
    inc rax
    jmp loop

end:
    ret