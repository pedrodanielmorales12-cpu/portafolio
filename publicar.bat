@echo off
cd /d "%~dp0"
echo.
echo ================================================================
echo   PUBLICAR PORTAFOLIO — pedrodanielmorales12-cpu
echo   https://pedrodanielmorales12-cpu.github.io/portafolio/
echo ================================================================
echo.

if not exist "snapshot.txt" (
  echo   AVISO: No se encontro snapshot.txt
  echo   Las imagenes no se veran en el sitio.
  echo   Ve al portafolio, haz click en "Publicar portafolio"
  echo   y copia el snapshot.txt a esta carpeta.
  echo.
)

echo   Guardando cambios...
git add .
git commit -m "Actualizacion %date% %time:~0,5%"

echo.
echo   Publicando...
"C:\Program Files\GitHub CLI\gh.exe" auth setup-git >nul 2>&1
git push origin main

echo.
echo ================================================================
echo   LISTO. Espera 1-2 minutos y refresca:
echo   https://pedrodanielmorales12-cpu.github.io/portafolio/
echo ================================================================
echo.
pause
