@echo off
::When server is ran, cd to current directory and disk
cd /d "%~dp0"

::Pulls from current repository
echo Pulling from main
git pull origin main
echo ================================
echo INPUT stop TO STOP SERVER AND COMMIT TO REPO. YOU MUST DO THIS
echo ================================
pause
::Run server
call startserver-java9.bat

echo ==========================================================
echo WAIT FOR COMMIT AND PUSH BEFORE CLOSING WINDOW OR YOU BREAK THINGS
echo ==========================================================
git add .
git commit -m "Auto-commit after server stop"
git push
pause