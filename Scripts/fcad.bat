@echo off
setlocal

:: Pfad zu FreeCAD
set "FREECAD_PATH=C:\Program Files\FreeCAD 1.1\bin\freecad.exe"

chcp 65001 > nul
:: Argument auswerten
if /i "%~1"=="-de" (
    echo Starte FreeCAD auf Deutsch...
    powershell -NoProfile -Command "$env:LANG='de_DE'; Start-Process '%FREECAD_PATH%'"
    goto end
)

if /i "%~1"=="-en" (
    echo Launching FreeCAD in English...
    powershell -NoProfile -Command "$env:LANG='en_US'; Start-Process '%FREECAD_PATH%'"
    goto end
)

if /i "%~1"=="-ru" (
    echo Запуск FreeCAD на русском языке...
    powershell -NoProfile -Command "$env:LANG='ru_RU'; Start-Process '%FREECAD_PATH%'"
    goto end
)

if /i "%~1"=="-fr" (
    echo Lancement de FreeCAD en français...
    powershell -NoProfile -Command "$env:LANG='fr_FR'; Start-Process '%FREECAD_PATH%'"
    goto end
)

if /i "%~1"=="-hu" (
    echo FreeCAD indult magyarul...
    powershell -NoProfile -Command "$env:LANG='hu_HU'; Start-Process '%FREECAD_PATH%'"
    goto end
)

echo Usage:
echo   fcad -de   (Deutsch)
echo   fcad -en   (English)
echo   fcad -fr   (Français)
echo   fcad -ru   (Русский)
echo   fcad -hu   (Magyar)
exit /b 1

:end
endlocal