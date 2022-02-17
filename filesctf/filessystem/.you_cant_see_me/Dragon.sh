
#!/bin/bash

FILE=kakao
FILETWO=kakaobloker
Path=/home/$USER/filessystem/.you_cant_see_me/

if [[ -f "$FILE" && ! -f "$FILETWO" ]]; then
	cowsay -f dragon "Danke!" "Ich liebe es, Kakao zu trinken.
	Ich kann ein Backdoor für dich öffnen."
	sleep 3
	echo "Wo soll ich es öffnen?: "
	read portal
	if [ "$portal" == "$Path" ]; then
		cp -R /etc/filesctf/backdoor $portal
		sleep 2
		sudo chown -R Philip backdoor
		echo "Warte!!.... Die FIREWALL kommt...."
		sleep 2
		echo "Beweg dich nicht!!!"
		sleep 3
		aafire &
		PID=$!
		sleep 4
		kill "$PID"
		sleep 1
		reset
		sleep 2
		cowsay -f dragon "Die Firewall ist weg!..."
		sleep 2
		echo "Backdoor ist offen!! Geh jetzt, bevor die Firewall zurückkommt!"
		sleep 2
		echo "Viel Glück mit dem Keeper!!"
		echo ""
		exit
	else
		sleep 1
		echo "Hmmm, der Weg ist nicht richtig!"
		sleep 1
		echo "Versuche es nochmal!"
		echo ""
		exit
	fi
else
	echo " Hey... Du... ICH LIEBE KAKAO!!"
	sleep 2
	aafire &
	PID=$!
	sleep 5
	kill "$PID"
	sleep 1
	reset
	sleep 1
	cowsay -f eyes "DU KOMSCH HIER NET REIN!""
				SUPER FIREWALL"
	echo ""
	exit
fi
