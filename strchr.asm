    BITS 64

    SECTION .text

    GLOBAL strchr

strchr:
    mov rax, 0

loop:
    cmp BYTE [rdi], sil
    je continue
    cmp BYTE [rdi], 0
    je end
    inc rdi
    jmp loop

continue:
    mov rax, rdi
    ret

end:
    ret