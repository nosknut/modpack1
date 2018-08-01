@echo off
@rmdir /S /Q .\server
echo removed old files. hit enter to construct server directory
pause
xcopy /E /F /I .\serverBase .\server
cd server/serverFiles
cls
echo serverBase folder has been copied and server wil be generated in the server directory
pause
echo A java window will show up soon. Let the server finish building and close it. THAT WINDOW IS NOT THE SERFVER CONSOLE!
pause
echo You will know when its done when you see this message in the log:
echo  Done (9,948s)! For help, type "help" or "?"
pause
echo Then press enter and click on startServer.bat to start the server
pause
javaw -d64 -Xmx1024M -Xms512M -jar ./minecraft_server.1.12.2.jar
Start ..