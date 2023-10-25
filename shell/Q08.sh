#!/bin/bash

# Verifica se o usuário forneceu um parâmetro
if [ "$#" -ne 1 ]; then
    echo "Por favor, forneça um único parâmetro que seja um arquivo ou diretório."
    exit 1
fi

parametro="$1"

# Verifica se o parâmetro corresponde a um arquivo
if [ -f "$parametro" ]; then
    echo "$parametro é um arquivo."
elif [ -d "$parametro" ]; then
    echo "$parametro é um diretório."
else
    echo "$parametro não é um arquivo nem um diretório."
fi


# Aguarda a entrada do usuário antes de sair
read -p "Pressione Enter para sair."