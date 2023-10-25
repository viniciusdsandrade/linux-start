#!/bin/bash

# Verifica se foram passados exatamente três parâmetros
if [ "$#" -ne 3 ]; then
    echo "Por favor, forneça exatamente três valores como parâmetros."
    exit 1
fi

# Atribui os parâmetros a variáveis
valor1="$1"
valor2="$2"
valor3="$3"

# Verifica qual é o maior valor
maior="$valor1"

if [ "$valor2" -gt "$maior" ]; then
    maior="$valor2"
fi

if [ "$valor3" -gt "$maior" ]; then
    maior="$valor3"
fi

# Exibe o maior valor
echo "O maior valor entre $valor1, $valor2 e $valor3 é: $maior"


# Aguarda a entrada do usuário antes de sair
read -p "Pressione Enter para sair."