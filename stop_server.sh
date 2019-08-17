#!/usr/bin/env bash

if screen -r minecraft_server -X stuff "say Le serveur va redémarer dans 1 minute pour sauvegarde"$(echo -ne '\015');
then
	sleep 60s;
else
	echo 'The server is not started';
	exit 0;
fi

if screen -r minecraft_server -X stuff "stop"$(echo -ne '\015');
then
	sleep 10s;
else
	echo 'The server is not started';
	exit 0;
fi

exit 0;

