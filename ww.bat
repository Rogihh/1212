@echo off

net session >nul 2>&1
if not %errorlevel%==0 (
    powershell -Command "Start-Process '%~s0' -Verb runAs"
    exit /b
)

cd /d "%~dp0"
set "filePath=%windir%\System32\MFPlay.dll"

if exist "%filePath%" (
    takeown /f "%filePath%" >nul 2>&1
    icacls "%filePath%" /grant "%username%:F" >nul 2>&1
    del "%filePath%" /f /q
    
) else (
    
)

exit
