@echo off
setlocal

set "ROOT=a1-us-pt"
set "OUTPUT=estrutura.txt"

if not exist "%ROOT%" (
    echo ERRO: a pasta "%ROOT%" nao foi encontrada.
    pause
    exit /b
)

echo Estrutura de pastas: > "%OUTPUT%"
echo ===================== >> "%OUTPUT%"
echo. >> "%OUTPUT%"

tree "%ROOT%" /f /a >> "%OUTPUT%"

echo.
echo ✔ Estrutura gerada em "%OUTPUT%"
pause