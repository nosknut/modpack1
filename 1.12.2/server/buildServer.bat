cp /server %userprofile%/desktop
cd %userprofile%/desktop/server/serverFiles
java -d64 -Xmx1024M -Xms512M -jar ./minecraft_server.1.12.2.jar
echo 
echo
echo Server folder has been copied to your desktop and generated.
echo A java window will show up soon. Let the server finish building and close it.
Then press enter and click on startServer.bat
read
cd ..
pause
Start .