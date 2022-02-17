
if [ $(id -u) -eq 0 ]; then
	username="Philip"
	password="paulaner"
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p "$pass" "$username"
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user! (contact Basti!)"
	fi
else
	echo "try using root or (contact Basti)."
	exit 2
fi
