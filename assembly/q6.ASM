;f) Resolver a equação: (5 * 5 + 2F) / (25 / 5 * 2)* F

section .data
    ; Defina a constante F (substitua pelo valor desejado)
    F db 3  ; Exemplo: valor de F é 3

section .bss
    ; Reserve espaço para as variáveis temporárias e o resultado
    resultado resb 1

section .text
global _start

_start:
    ; Carregue o valor de F em AL
    mov al, [F]

    ; Multiplique AL por 5
    mov bl, 5
    mul bl

    ; Adicione 25 a AL
    add al, 25

    ; Divida AL por 5
    mov bl, 5
    div bl

    ; Multiplique AL por 2
    mov bl, 2
    mul bl

    ; Multiplique AL pelo valor original de F
    mul byte [F]

    ; O resultado estará em AL

    ; Armazene o resultado em [resultado]
    mov [resultado], al

    ; Você pode adicionar código aqui para usar o valor resultante (em [resultado]) como desejar

    ; Saia do programa
    mov eax, 1           ; Código de saída
    int 0x80             ; Chamada do sistema para sair
