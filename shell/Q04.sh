#!/bin/bash

# Solicita ao usuário a temperatura em graus Celsius
read -p "Digite a temperatura em graus Celsius: " C

# Verifica se a entrada é um número válido
if ! [[ "$C" =~ ^[0-9]*(\.[0-9]+)?$ ]]; then
    echo "Entrada inválida. Por favor, insira um número válido."
    exit 1
fi

# Calcula a temperatura em graus Fahrenheit
F=$(echo "scale=2; (9 * $C + 160) / 5" | bc)

# Exibe o resultado
echo "A temperatura em graus Fahrenheit é: $F"


# Aguarda a entrada do usuário antes de sair
read -p "Pressione Enter para sair."