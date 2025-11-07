@echo off
REM ============================================
REM Script de Test Local - A18_Amer_final_1288
REM ============================================

echo.
echo ====================================
echo   TEST LOCAL - A18_Amer_final_1288
echo ====================================
echo.

REM Demander le username Docker Hub
set /p DOCKER_USERNAME="Entrez votre username Docker Hub: "

echo.
echo [1/5] Verification de Docker...
docker --version
if %errorlevel% neq 0 (
    echo ERREUR: Docker n'est pas installe ou n'est pas en cours d'execution!
    pause
    exit /b 1
)

echo.
echo [2/5] Construction de l'image Docker...
docker build -t %DOCKER_USERNAME%/a18-amer-final-1288:latest .
if %errorlevel% neq 0 (
    echo ERREUR: La construction de l'image a echoue!
    pause
    exit /b 1
)

echo.
echo [3/5] Test de l'image Docker...
echo Resultat attendu: "Test des images docker"
echo.
docker run --rm %DOCKER_USERNAME%/a18-amer-final-1288:latest
if %errorlevel% neq 0 (
    echo ERREUR: L'execution de l'image a echoue!
    pause
    exit /b 1
)

echo.
echo [4/5] Liste des images Docker locales...
docker images | findstr a18-amer-final-1288

echo.
echo [5/5] Informations sur l'image...
docker inspect %DOCKER_USERNAME%/a18-amer-final-1288:latest --format="Taille: {{.Size}} octets"

echo.
echo ====================================
echo   TESTS TERMINES AVEC SUCCES!
echo ====================================
echo.
echo Image creee: %DOCKER_USERNAME%/a18-amer-final-1288:latest
echo.
echo Prochaines etapes:
echo 1. Prenez une CAPTURE de cette fenetre (pour Capture e)
echo 2. Poussez le code sur GitHub
echo 3. Configurez les secrets GitHub
echo 4. Le pipeline se declenchera automatiquement
echo.

pause
