REM 2) Desenvolver um arquivo em lote (.bat) que crie uma pasta a
REM partir do nome digitado pelo usuário (usar set /p). (0,5 ponto)

@echo off

REM Solicita ao usuário um nome para a pasta
set /p nome_pasta=Digite o nome da pasta a ser criada: 

REM Verifica se o nome da pasta foi fornecido
if "%nome_pasta%"=="" (
    echo Nome da pasta não pode ser em branco.
    exit /b
)

REM Cria a pasta com o nome fornecido pelo usuário
mkdir "%nome_pasta%"

if exist "%nome_pasta%" (
    echo Pasta "%nome_pasta%" criada com sucesso.
) else (
    echo Falha ao criar a pasta "%nome_pasta%".
)

pause