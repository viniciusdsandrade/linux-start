#!/bin/bash

# Solicita ao usuário um valor inteiro
read -p "Digite um valor inteiro: " valor

# Verifica se o valor é positivo, negativo ou nulo
if [ $valor -gt 0 ]; then
    echo "POSITIVO"
elif [ $valor -lt 0 ]; then
    echo "NEGATIVO"
else
    echo "NULO"
fi


# Aguarda a entrada do usuário antes de sair
read -p "Pressione Enter para sair."