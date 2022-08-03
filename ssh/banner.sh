#!/bin/bash

if [[ $USER != 'root' ]]; then
	echo "Oops! root privileges needed"
	exit
fi
while :
do
	clear
	echo " "
	echo " "
	echo "-----------------------------------------"
	echo "            Edit Server Message       "
	echo "-----------------------------------------"
	echo "In order to work this changing server message"
	echo "A reboot is required to do"
	echo " "
	echo "    [ MENU ]"
	echo "1. Edit Server Message"
	echo "2. Reboot Now"
	echo "3. Go Back"
	read -p "Select from 1 to 3 : " option2
	case $option2 in
		1)
		nano /etc/issue.net
		;;
		2)
		cd
		clear
		echo "YOUR SERVER IS NOW REFRESHING "
		echo "DON'T TOUCH ANYTHING!!!"
		service nginx start
		service php7.0-fpm start
		service vnstat restart
		service openvpn restart
		service dropbear restart
		service fail2ban restart
		service squid restart
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "."
		echo "All services were refreshed successfully!"
		echo "NOW REBOOTING, PLEASE WAIT..."
		sleep 5
		reboot
		
		;;
		3)
		clear
		exit
		;;
	esac
done
cd
