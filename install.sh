#!/bin/bash

if [ $(whoami) != 'root' ]; then
	echo "Please run this script using root privileges."
	exit
fi

echo -e "\n.....................INSTALLING DEDMAP..........................\n"
chmod +x dedmap
apt-get update
apt-get install python3 python3-pip figlet
pip3 install -U pip
pip3 install -r requirements.txt
pyfiglet -L fonts/Bloody.flf
mkdir -p /usr/share/dedmap/
cp -f dedmap /usr/share/dedmap/
ln -sf /usr/share/dedmap/dedmap /usr/bin/dedmap
echo -e "\n......................INSTALLATION FINISHED......................"
echo -e "\nThanks for installing dedmap.\nUse dedmap -h or --help for usage instructions.\n"
