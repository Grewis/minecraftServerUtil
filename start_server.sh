#!/usr/bin/env bash

if screen -r minecraft_server -X stuff "java -jar minecraft_server/spigot-1.14.4.jar"$(echo -ne '\015');
then
	echo 'Server is starting in the screen minecraft_server';
else
	echo 'Starting a new screen session and the server';
	screen -dmS minecraft_server java -jar minecraft_server/spigot-1.14.4.jar
fi

exit 0;