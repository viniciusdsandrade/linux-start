;e) Resolver a equação: (2 * A) / (4 - 1)

section .data
    ; Defina a constante A (substitua pelo valor desejado)
    A db 5  ; Exemplo: valor de A é 5

section .bss
    ; Reserve espaço para as variáveis temporárias e o resultado
    resultado resb 1

section .text
global _start

_start:
    ; Carregue o valor de A em AL
    mov al, [A]

    ; Multiplique AL por 2
    shl al, 1

    ; Subtraia 1 de 4
    mov bl, 4
    sub bl, 1

    ; Divida AL por BL
    div bl

    ; O resultado estará em AL

    ; Armazene o resultado em [resultado]
    mov [resultado], al

    ; Você pode adicionar código aqui para usar o valor resultante (em [resultado]) como desejar

    ; Saia do programa
    mov eax, 1           ; Código de saída
    int 0x80             ; Chamada do sistema para sair
