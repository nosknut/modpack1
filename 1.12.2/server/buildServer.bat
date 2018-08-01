@echo off
echo by pressing enter you allow the server builder to delete any existing server folder in the same directory as buildServer.bat
pause
cls
echo make sure no programs are using those files
pause
rmdir /S /Q .\server
cls
echo removed old files. hit enter to construct server directory
pause
xcopy /E /F /I .\serverBase .\server
cd server/serverFiles
cls
echo serverBase folder has been copied and server wil be generated in the server directory
pause
cls
echo A java window will show up soon. Let the server finish building and close it. THAT WINDOW IS NOT THE SERFVER CONSOLE!
echo You will know when its done when you see this message in the log:
echo  Done (9,948s)! For help, type "help" or "?"
echo .
echo Press enter when the window is closed
@timeout /t 10
Start javaw -d64 -Xmx1024M -Xms512M -jar ./minecraft_server.1.12.2.jar
pause
cls
echo click startServer.bat to start the server
timeout /t 6
Start ..