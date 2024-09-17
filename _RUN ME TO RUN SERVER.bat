::Pulls from current repository
echo Pulling from main
git origin main pull

::Run server
call startserver-java9.bat

::When server closes, cd to current directory and disk
cd /d "%~dp0"

::Commit and pushd
echo ==========================================================
echo WAIT FOR COMMIT AND PUSH BEFORE CLOSING WINDOW OR YOU BREAK THINGS
echo ==========================================================

git add .

git commit -m "Server stopped on %date% at %time%"

git push origin main