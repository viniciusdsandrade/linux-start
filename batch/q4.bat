REM 4) Criar um arquivo de comando em lotes (.BAT) que crie uma pasta chamada BACKUP 
REM e copie os arquivos de uma determinada pasta, passada como parâmetro, para a pasta BACKUP (0,5 ponto).

@echo off

REM Verifica se um parâmetro (caminho da pasta de origem) foi fornecido
if "%~1"=="" (
    echo Uso: %0 [caminho_da_pasta_de_origem]
    exit /b 1
)

REM Define o caminho da pasta de origem e da pasta BACKUP
set "pasta_origem=%~1"
set "pasta_destino=BACKUP"

REM Verifica se a pasta de origem existe
if not exist "%pasta_origem%" (
    echo Pasta de origem não encontrada.
    exit /b 1
)

REM Cria a pasta BACKUP se ela não existir
mkdir "%pasta_destino%" 2>nul

REM Copia os arquivos da pasta de origem para a pasta BACKUP
xcopy /s /e /i "%pasta_origem%\*" "%pasta_destino%"

echo Arquivos copiados de "%pasta_origem%" para "%pasta_destino%" com sucesso.

exit /b 0
