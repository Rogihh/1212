::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFCl7ay2+GG6pDaET+NTf5vmErV8ZGucnfe8=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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