rem don't forget to accept the EULA or it won't boot
java -Xms6G -Xmx6G -Dfml.readTimeout=180 @java9args.txt -jar lwjgl3ify-forgePatches.jar nogui


cd /d push$d

git add.

git commit -m "Server Stopped on %date% at %time%. Commiting Changes"

git push origin main

