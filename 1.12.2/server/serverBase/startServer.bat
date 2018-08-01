@echo off
FOR /F "tokens=2,3" %%A IN ('ping %computername% -n 1 -4') DO IF "from"== "%%A" set "IP=%%~B"
echo Local IP is: %IP:~0,-1%
echo Press enter to start the server on this ipaddress or Ctrl + c twice follwed by the leter y, then enter twice to close

pause
cls
echo the server is set to use minimum RAM of 2048M and maximum 10240M. If you disagree, edit Xmx and Xms near the bottom startServer.bat in notepad
pause
cls
echo Windows has an issue with running java files where it can freeze from time to time
echo If the server freezes, try typing something in the console and hit enter
echo if you get the message saying something along the lines of unknown command, the server should be up
pause
java -d64 -version
cd serverFiles
java -d64 -Xmx10240M -Xms2048M -jar ./forge-1.12.2-14.23.4.2745-universal.jar nogui
pause