;b) Resolver a equação: (45 + 2D) – (9 + A + 5)

section .data
    ; Defina as constantes
    valor1 db 45h
    valor2 db 2Dh
    valor3 db 9h
    valor4 db 0Ah
    valor5 db 5h

section .bss
    ; Reserve espaço para a variável de resultado
    resultado resb 1

section .text
global _start

_start:
    ; Carregue os valores em registradores
    mov al, [valor1]
    add al, [valor2]    ; Adicione 2D a AL
    sub al, [valor3]    ; Subtraia 9 de AL
    sub al, [valor4]    ; Subtraia 0A de AL
    sub al, [valor5]    ; Subtraia 05 de AL

    ; Armazene o resultado em [resultado]
    mov [resultado], al

    ; Você pode adicionar código aqui para usar o valor resultante (em [resultado]) como desejar

    ; Saia do programa
    mov eax, 1           ; Código de saída
    int 0x80             ; Chamada do sistema para sair
