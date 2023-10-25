;c) Resolver a equação: (FACA – 5A + 30) – (CA + 34);

section .data
    ; Defina as constantes em hexadecimal
    faca db 0FAh   ; Valor FACA em hexadecimal
    a db 0Ah      ; Valor 5A em hexadecimal
    trinta db 30h ; Valor 30 em hexadecimal
    ca db 0CAh    ; Valor CA em hexadecimal
    trinta_e_quatro db 34h ; Valor 34 em hexadecimal

section .bss
    ; Reserve espaço para a variável de resultado
    resultado resb 1

section .text
global _start

_start:
    ; Carregue os valores em registradores
    mov al, [faca]     ; Carregue FACA em AL
    sub al, [a]        ; Subtraia 5A de AL
    add al, [trinta]   ; Adicione 30 a AL
    mov bl, [ca]       ; Carregue CA em BL
    add bl, [trinta_e_quatro] ; Adicione 34 a BL

    ; Subtraia BL de AL (AL - BL)
    sub al, bl

    ; Armazene o resultado em [resultado]
    mov [resultado], al

    ; Você pode adicionar código aqui para usar o valor resultante (em [resultado]) como desejar

    ; Saia do programa
    mov eax, 1           ; Código de saída
    int 0x80             ; Chamada do sistema para sair
