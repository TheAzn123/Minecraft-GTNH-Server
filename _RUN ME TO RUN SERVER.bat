::When server is ran, cd to current directory and disk
cd /d "%~dp0"

::Pulls from current repository
echo Pulling from main
git pull origin main

::Run server
call startserver-java9.bat

echo
echo ==========================================================
echo Type exit to stop the server
echo ==========================================================
set /p exitcommand=Type 'exit' to stop the server:

if "%exitcommand%" == "exit" (
    echo Stopping Minecraft server...
    echo stop | java -Xmx4G -Xms1G -jar server.jar nogui
    goto end
) else (
    set /p exitcommand=Type 'exit' to stop the server:
    goto loop
)
::Commit and pushd
:end
echo ==========================================================
echo WAIT FOR COMMIT AND PUSH BEFORE CLOSING WINDOW OR YOU BREAK THINGS
echo ==========================================================
git add .
git commit -m "Auto-commit after server stop"
git push
pause