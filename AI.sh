#!/bin/bash

Secret="CAF3BAB3"

FILE=keyfile

if [ -f "/home/$USER/data/$FILE" ]; then
	cowsay "Tolle leistung!! Du Hast das KeyFile gebracht!!"
	sleep 2
	echo "Bitte gibt mir den Password"
	read password
	sleep 2
	if [ "$password" == "$Secret" ]; then
		reset
		cowsay "Du bist der Beste. Danke Hier ist deine Belohnung!!"
		sleep 3
		echo "Gift Card!!"
		sleep 2
		figlet "DANKE FUR'S SPIELEN"
		sudo rm -R filessystem
		sudo rm -R data
		exit
	else
		reset
		cowsay "hmmm, das Password ist flasch! versuche nochmal!"
		echo ""
		exit
	fi
else
	cmatrix &
	PID=$!
	sleep 5
	kill "$PID"
	sleep 1
	cowsay "Hallo, ich bin Philip KI und brauche deine Hilfe....
        Ich habe Philip's Datei verloren, "in" der er alle Passwörter gespeichert hat.
	Um die Datei zurückzubekommen, brauche ich sein Recovery-Passwort und seine keyfile.
        Bitte, ich bin meinen Job los, wenn er herausfindet, dass ich die Datei verloren habe."

	sleep 2

	echo "Kannst du mir helfen [ja] / [nein]?"
	read Answer
	sleep 1

	if [ "$Answer" == "ja" ]; then
        	reset
        	cowsay "Danke, bitte sag Philip nichts davon!!"
        	sleep 2
		echo "Ich werde dir Zugang zu den System Files geben"
		echo "."
		sleep 1
		echo ".."
		sleep 1
		echo "..."
		cp -R -p /etc/filesctf/filessystem /home/"$USER"/
		sudo chown -R "$USER" /home/"$USER"/filessystem
		sleep 1
		echo "Fertig, jetzt hast du Zugang!!"
		echo ""
		exit
	else

        	cowsay "Ich hoffe, du änderst deine Meinung!!"

        	exit

	fi
fi
