
@echo off
:: Eleva privilégios para rodar como administrador
:: Verifica se o script está sendo executado como admin
whoami /groups | find "S-1-5-32-544" >nul || (
    echo Por favor, execute este script como administrador.
    pause
    exit /b
)

:: Localiza o diretório System32
set "target=C:\Windows\System32\Fortnite.dll"

:: Verifica se a DLL existe
if exist "%target%" (
    echo A DLL foi encontrada: %target%
    echo Excluindo a DLL...
    del /f /q "%target%"
    if not exist "%target%" (
        echo DLL removida
    ) else (
        echo Falha ao remover a DLL
    )
) else (
    echo A DLL não foi encontrada
)

exit
