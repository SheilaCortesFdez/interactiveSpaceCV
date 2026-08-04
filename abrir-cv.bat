@echo off
REM Script para abrir el CV interactivo 3D directamente en el navegador
REM No requiere Node.js ni servidor

setlocal enabledelayedexpansion

REM Obtener la ruta completa del archivo index.html
set "PROJECT_DIR=%~dp0"
set "FILE_PATH=%PROJECT_DIR%index.html"

REM Convertir la ruta a formato de URL (file://)
set "URL=file:///%FILE_PATH:\=/%"

REM Eliminar el slash extra al principio si existe
if "!URL:~0,8!"=="file:////" (
    set "URL=file:///!URL:~8!"
)

echo.
echo ========================================
echo   CV Interactivo 3D - Sheila Cortes
echo ========================================
echo.
echo Abriendo el navegador...
echo.

REM Abrir con el navegador por defecto
start "" "!FILE_PATH!"

echo ✓ El navegador debería abrirse en unos segundos
echo.
echo Si no se abre automáticamente, copia esta ruta en tu navegador:
echo !URL!
echo.
pause

