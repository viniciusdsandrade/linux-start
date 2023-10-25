REM 1) Criar um arquivo em lote (.bat) que permita copiar todo o conteúdo 

@echo off
set "origem=C:\Users\vinic\OneDrive\s1"
set "destino=C:\Users\vinic\OneDrive\RESERVA"

REM Verificar se a pasta de origem existe
if not exist "%origem%" (
    echo A pasta de origem "%origem%" nao existe.
    exit /b
)

REM Verificar se a pasta de destino existe, caso contrário, criar
if not exist "%destino%" (
    mkdir "%destino%"
)

REM Copiar todo o conteúdo da pasta de origem para a pasta de destino
xcopy /s /i "%origem%\*" "%destino%\"

echo A copia foi concluida com sucesso!
