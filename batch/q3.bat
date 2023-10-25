REM 3) Implementar um arquivo em lote (.bat) com as seguintes funcionalidades. (0,5 ponto)
REM Digite:
REM 1 Mostrar a Versao do Sistema Operacional
REM 2 Criar uma Pasta
REM 3 Apagar uma Pasta
REM 4 Copiar o Conteudo de uma Pasta para Outra Pasta
REM 5 Apagar um Arquivo
REM 0 Terminar o BAT.
REM Onde:
REM Nas opcoes 2, 3 e 5 o usuario devera digitar o nome do arquivo/pasta apos digitar a opcao.
REM Na opcao 4 o usuario devera digitar o nome da pasta de origem e de destino.

@echo off
:menu
cls
echo Menu de Opcoes:
echo 1 - Mostrar a Versao do Sistema Operacional
echo 2 - Criar uma Pasta
echo 3 - Apagar uma Pasta
echo 4 - Copiar o Conteudo de uma Pasta para Outra Pasta
echo 5 - Apagar um Arquivo
echo 0 - Terminar o BAT.

set /p opcao=Digite o numero da opcao desejada: 

if "%opcao%"=="1" (
    ver
) else if "%opcao%"=="2" (
    set /p nome_pasta=Digite o nome da pasta a ser criada: 
    mkdir "%nome_pasta%" 2>nul
    if exist "%nome_pasta%" (
        echo Pasta "%nome_pasta%" criada com sucesso.
    ) else (
        echo Falha ao criar a pasta "%nome_pasta%".
    )
) else if "%opcao%"=="3" (
    set /p nome_pasta=Digite o nome da pasta a ser apagada: 
    rmdir /s /q "%nome_pasta%" 2>nul
    if not exist "%nome_pasta%" (
        echo Pasta "%nome_pasta%" apagada com sucesso.
    ) else (
        echo Falha ao apagar a pasta "%nome_pasta%".
    )
) else if "%opcao%"=="4" (
    set /p origem=Digite o nome da pasta de origem: 
    set /p destino=Digite o nome da pasta de destino: 
    xcopy /s /e /i "%origem%" "%destino%"
    if exist "%destino%" (
        echo Conteudo de "%origem%" copiado para "%destino%" com sucesso.
    ) else (
        echo Falha ao copiar o conteudo de "%origem%" para "%destino%".
    )
) else if "%opcao%"=="5" (
    set /p nome_arquivo=Digite o nome do arquivo a ser apagado: 
    del "%nome_arquivo%" 2>nul
    if not exist "%nome_arquivo%" (
        echo Arquivo "%nome_arquivo%" apagado com sucesso.
    ) else (
        echo Falha ao apagar o arquivo "%nome_arquivo%".
    )
) else if "%opcao%"=="0" (
    exit
) else (
    echo Opcao invalida. Digite um numero de opcao valido.
)

pause
goto menu
