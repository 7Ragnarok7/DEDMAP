#!/bin/bash

if [ $(whoami) != 'root' ]; then
	echo "Please run this script using sudo."
	exit
fi

rm /usr/bin/dedmap
rm -rf /usr/share/dedmap/
echo -e "\n.......................DEDMAP UNINSTALLED............................"
echo -e "\nIt's sad to see you leave :(\n"
