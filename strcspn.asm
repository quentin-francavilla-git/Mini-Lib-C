    BITS 64

    SECTION .text

    GLOBAL strcspn

strcspn:
    mov rax, 0
    mov r9, 0

loop:
    mov r12b, BYTE [rdi]
    mov r13b, BYTE [rsi]
    cmp r12b, 0
    je reset_rdi
    cmp r13b, 0
    je end
    cmp r12b, r13b
    je egality_found
    inc rdi
    inc r9
    jmp loop

reset_rdi:
    cmp r9, 0
    je reset_next
    dec r9
    dec rdi
    jmp reset_rdi

reset_next:
    inc rsi
    jmp loop

egality_found:
    mov rax, r9

end:
    ret