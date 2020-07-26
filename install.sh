#!/bin/bash -x

echo .....................INSTALLING DEDMAP..........................
sudo apt-get install python3 python3-pip
sudo pip install -r requirements.txt
sudo mkdir -p /usr/share/figlet
sudo cp fonts/* /usr/lib/python3/dist-packages/pyfiglet/fonts/
sudo cp dedmap /usr/bin/
echo ......................INSTALLATION FINISHED......................
echo -e "\nThanks for installing dedmap.\nUse dedmap -h or --help for usage instructions.\n"
