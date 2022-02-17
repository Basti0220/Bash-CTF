#!/bin/bash

secret="lego!"

recovery="CAF3BAB3"

cowsay -f ghostbusters "Ich bin der Keeper...."


if [ "$EUID" != 1002 ]; then
	reset
	cowsay -f ghostbusters "Du bist nicht Philip!! Ich spreche nur mit Philip!!"
	sleep 5
	reset
else

	echo "Wie lautet der Geheimcode?: "

	read Phrase

	sleep 1

	reset

	sleep 1

	if [ "$secret" == "$Phrase" ]; then
        	cowsay -f ghostbusters "Geheimcode ist gültig."
        	echo "Philip deine Password ist..."
        	sleep 2
        	echo "$recovery"
		sleep 1
		echo "Hier ist eine Kopie von der keyFile"
		sleep 1
		touch keyfile
		sudo chown -R Basti /home/Basti/filessystem/.you_cant_see_me/backdoor/keyfile
		echo ""
		exit
	else
        	cowsay -f ghostbusters "DU BIST EIN HACKER!! GEH WEG!!."
        	sleep 5
		aafire &
		PID=$!
		sleep 3
	        kill "$PID"
        	sleep 1
		reset

	fi
fi
