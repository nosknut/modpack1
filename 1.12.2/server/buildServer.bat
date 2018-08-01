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
echo click startServer.bat to start the server. the first run will fail in order to propperly generate the world.
timeout /t 6
Start ..