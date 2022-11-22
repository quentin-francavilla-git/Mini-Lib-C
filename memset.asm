    BITS 64

    SECTION .text

    GLOBAL memset

memset:
    mov r9, 0
    mov rax, rdi

start:
    cmp rdx, 0
    jg loop
    ret

loop:
    cmp r9, rdx
    je dec_rdi
    mov BYTE [rdi], sil
    inc rdi
    inc r9
    jmp loop

dec_rdi:
    cmp r9, 0
    je end
    dec r9
    dec rdi
    jmp dec_rdi

end:
    mov rax, rdi
    ret