#!/bin/bash

if [ $(whoami) != 'root' ]; then
	echo "Please run this script using sudo."
	exit
fi

echo -e "\n.....................INSTALLING DEDMAP..........................\n"
chmod +x dedmap
apt-get update
apt-get install python3 python3-pip figlet
echo
read -p "Select python3 as default if it is not already from the menu below. Press anything to continue :- "
update-alternatives --config python
pip3 install -U pip
pip3 install -r requirements.txt
cp -f fonts/* /usr/lib/python3/dist-packages/pyfiglet/fonts/
cp -f fonts/* /usr/local/lib/python3/dist-packages/pyfiglet/fonts/
mkdir -p /usr/share/dedmap/
cp -f dedmap /usr/share/dedmap/
ln -sf /usr/share/dedmap/dedmap /usr/bin/dedmap
echo -e "\n......................INSTALLATION FINISHED......................"
echo -e "\nThanks for installing dedmap.\nUse dedmap -h or --help for usage instructions.\n"
