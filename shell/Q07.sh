#!/bin/bash

# Verifica se um arquivo foi passado como parâmetro
if [ "$#" -ne 1 ]; then
    echo "Por favor, forneça o nome de um arquivo como parâmetro."
    exit 1
fi

arquivo="$1"

# Verifica se o arquivo existe
if [ -f "$arquivo" ]; then
    # Pede confirmação ao usuário antes de apagar o arquivo
    read -p "Tem certeza de que deseja apagar o arquivo '$arquivo'? (S/n): " confirmacao

    # Verifica a resposta do usuário
    if [ "$confirmacao" == "S" ] || [ "$confirmacao" == "s" ]; then
        rm "$arquivo"
        echo "O arquivo '$arquivo' foi apagado."
    else
        echo "O arquivo não foi apagado."
    fi
else
    echo "O arquivo '$arquivo' não existe."
fi


# Aguarda a entrada do usuário antes de sair
read -p "Pressione Enter para sair."