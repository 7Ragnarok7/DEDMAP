#!/bin/bash

echo -e "\n.....................INSTALLING DEDMAP..........................\n"
chmod +x dedmap
apt-get install python3 python3-pip
read -p "Select python3 as default if it is not already from the menu below. Press anything to continue :- "
update-alternatives --config python
pip3 install -U pip
pip3 install -r requirements.txt
cp fonts/* /usr/lib/python3/dist-packages/pyfiglet/fonts/
cp fonts/* /usr/local/lib/python3/dist-packages/pyfiglet/fonts/
mkdir /opt/dedmap/
cp dedmap /opt/dedmap/
ln -s /opt/dedmap/dedmap /usr/bin/dedmap
echo -e "\n......................INSTALLATION FINISHED......................"
echo -e "\nThanks for installing dedmap.\nUse dedmap -h or --help for usage instructions.\n"
