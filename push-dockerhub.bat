@echo off
REM ============================================
REM Script de Push Docker Hub - A18_Amer_final_1288
REM ============================================

echo.
echo ====================================
echo   PUSH VERS DOCKER HUB
echo   A18_Amer_final_1288
echo ====================================
echo.

REM Demander le username Docker Hub
set /p DOCKER_USERNAME="Entrez votre username Docker Hub: "

echo.
echo [1/4] Connexion a Docker Hub...
docker login
if %errorlevel% neq 0 (
    echo ERREUR: La connexion a Docker Hub a echoue!
    pause
    exit /b 1
)

echo.
echo [2/4] Tag de l'image...
docker tag %DOCKER_USERNAME%/a18-amer-final-1288:latest %DOCKER_USERNAME%/a18-amer-final-1288:manual-push

echo.
echo [3/4] Push vers Docker Hub...
docker push %DOCKER_USERNAME%/a18-amer-final-1288:latest
docker push %DOCKER_USERNAME%/a18-amer-final-1288:manual-push

echo.
echo [4/4] Verification...
echo Allez sur https://hub.docker.com/r/%DOCKER_USERNAME%/a18-amer-final-1288
echo pour verifier que l'image est bien presente.

echo.
echo ====================================
echo   PUSH TERMINE AVEC SUCCES!
echo ====================================
echo.
echo Image poussee: %DOCKER_USERNAME%/a18-amer-final-1288
echo Tags: latest, manual-push
echo.

pause
