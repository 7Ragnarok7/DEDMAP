#!/bin/bash

echo .....................INSTALLING DEDMAP..........................
sudo apt-get install python3 python3-pip
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10
read -p "Select python3 as default if it is not already from the menu below. Press anything to continue :- "
sudo update-alternatives --config python
sudo pip install -U pip
sudo pip install -r requirements.txt
sudo mkdir -p /usr/share/figlet
sudo cp fonts/* /usr/lib/python3/dist-packages/pyfiglet/fonts/
sudo cp dedmap /usr/bin/
echo ......................INSTALLATION FINISHED......................
echo -e "\nThanks for installing dedmap.\nUse dedmap -h or --help for usage instructions.\n"
