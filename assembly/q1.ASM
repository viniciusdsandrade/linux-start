;a) Somar os valores: FA, 7E e 12

section .data
    num1 db 0xFA
    num2 db 0x7E
    num3 db 0x12
    result db 0

section .text
    global _start

_start:
    ; Carrega os valores em registradores
    mov al, [num1]
    mov bl, [num2]
    mov cl, [num3]

    ; Soma os valores
    add al, bl
    adc al, cl

    ; Armazena o resultado
    mov [result], al

    ; Termina o programa
    mov eax, 1
    int 0x80
