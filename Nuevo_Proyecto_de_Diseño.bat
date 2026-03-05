@echo off
chcp 65001 >nul
REM Ventana para pedir nombre del proyecto
for /f "delims=" %%i in ('powershell -NoProfile -Command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Nombre del proyecto de diseño','Nuevo Proyecto','')"') do set "PROJECT=%%i"

REM Si el usuario cancela o deja vacío
if "%PROJECT%"=="" (
    echo Operacion cancelada.
    pause
    exit
)

setlocal
REM Ruta actual
set "BASE=%CD%"

REM Crear carpetas
mkdir "%BASE%\%PROJECT%\0.Client_Info"
mkdir "%BASE%\%PROJECT%\1.Inspiration"
mkdir "%BASE%\%PROJECT%\2.Stock_Photos"
mkdir "%BASE%\%PROJECT%\3.Mockups"
mkdir "%BASE%\%PROJECT%\4.Working_Files"
mkdir "%BASE%\%PROJECT%\5.Final_Files"

echo Estructura creada en:
echo %BASE%\%PROJECT%

pause