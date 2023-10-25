;d) Subtrair CAC0 de 01A;

section .data
    ; Defina as constantes em hexadecimal
    cac0 db 0C0h ; Valor CAC0 em hexadecimal
    zero1A db 1Ah ; Valor 01A em hexadecimal

section .bss
    ; Reserve espaço para a variável de resultado
    resultado resb 1

section .text
global _start

_start:
    ; Carregue os valores em registradores
    mov al, [cac0]      ; Carregue CAC0 em AL
    sub al, [zero1A]    ; Subtraia 01A de AL

    ; Armazene o resultado em [resultado]
    mov [resultado], al

    ; Você pode adicionar código aqui para usar o valor resultante (em [resultado]) como desejar

    ; Saia do programa
    mov eax, 1           ; Código de saída
    int 0x80             ; Chamada do sistema para sair
