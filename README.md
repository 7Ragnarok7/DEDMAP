[![DEDMAP-ico](https://github.com/7Ragnarok7/DEDMAP/blob/master/image-src/Screenshot%20from%202020-07-24%2021-45-44.png?raw=true)][page]
# *DEDMAP*
[![Python-ico](https://github.com/7Ragnarok7/DEDMAP/blob/master/image-src/python-logo.png?raw=true)][py]  

##### DEDMAP is a ***Simple*** but ***Powerful***, ***Clever*** and ***Flexible*** Cross-Platform [Port Scanning][ps] tool made with ease to use and convenience in mind. 

Both TCP and UDP protocols have 0 to 65535 ports. These 65535 ports can be divided into the following three ranges:-
 - System or well-known ports: from 0 to 1023
 
 - User or registered ports: from 1024 to 49151
 
 - Dynamic or private ports: all > 49151 

**DEDMAP** tries to scan a target ip or range of ip's and find services that are running and listening on some ports.

### Requirements :-  
 - [Python 3][py]

 - [Pip][pp]

 - *A bit of love and care* :)
 
### Installation :-
```sh
$ git clone https://github.com/7Ragnarok7/DEDMAP.git
$ cd DEDMAP
$ chmod +x install.sh
$ ./install.sh
```
All the requirements will be installed automatically.
Just execute the "install.sh" file ;)

### Uninstallation :-
```sh
$ cd DEDMAP
$ chmod +x uninstall.sh
$ ./uninstall.sh
```
### Highlights :-
 - Packed with lots of additional features all in one place.

 - Supports IP-RANGES (1.1.1.1-100)

 - Supports Sweep Scanning (Ping Sweep)

 - Has a turbo mode (lan mode) for sweep scanning. The turbo mode can be used both in lan and wan but it is recommended to use only in lan as it may decrease the accuracy of the scan in a wan network. 

 - Is clever. Scans only the live targets if a sweep scan in combined with other scans.

 - Is flexible. Multiple scanning options can be combined together based on requirements.

 - Supports Verbose mode

 - Supports Writing the Output to a file.

 - Supports various port specification options

 - Is colorful. Provides colored event based visual responses.

### Color schemes :-
 - BLUE	  -->  FOR MARKING THE SUCCESSFUL STARTING AND COMPLETION OF THE PROGRAM
 
 - RED    -->  FOR MARKING STARTING/ENDING OF AN EVENT OR AN ERROR
 
 - GREEN  -->  FOR MARKING A SUCCESSFUL HOST/PORT DISCOVERIES AND HELP MENU

 - RESET  -->  FOR RESETTING TO DEFAULT SHELL COLOR

 - GRAY   -->  FOR MARKING AN UNSUCCESSFUL HOST/PORT DISCOVERY IN VERBOSE MODE

 - YELLOW -->  FOR MARKING DEBUGGING STATEMENTS

### Usage :-
```sh
$ dedmap [--option(s)] [target(s)]
```
 - By default a tcp scan will be performed if no options are provided.

 - -t option must be exclusively used if any other option is used like -v or -s.

 - By default the well-known top 1024 ports will be scanned if no ports are specified.

 - Long Options (--<options>) have more priority.

### Options: :-
 - -h, --help              show this help message and exit

 - -v, --verbose           run in verbose mode

 - -d, --dns               performs a dns lookup

 - -r, --rdns		   performs a reverse dns lookup

 - -p, --port<port(s)>     only scan specified port(s)
 -                         Ex: -p 21; -p 21,22,23;
 -                        -p user; (scan user ports from 1024 to 49151)
 -                        -p private; (scan private ports from 49152 to 65535)
 -                        -p all; (scan all ports from 0 to 65535)
 
 - -t, --tcp              perform a tcp scan (default scan if NO OPTIONS are specified)

 - -u, --udp              perform a udp scan (NOT WORKING PRESENTLY!!!!)

 - -s, --sweep            perform a sweep scan

 - -m, --mode<wan/lan>    select the mode for sweep scan (default = wan)
 -                        Select lan mode(turbo mode) for better scanning speeds (upto 10x)
 -                        It is recommended to use the turbo mode only on a lan network
 -                        as it might result loss of accuracy in wan networks
 -                        Ex: -sm lan; -sm wan;

 - -w, --write<filename>  writes the results in a file
 -                        Ex: -w report.txt

### Examples :-
Combine the options according to your requirements. Dedmap is flexible and clever enough :)
```sh
$ dedmap 1.1.1.1
$ dedmap localhost
$ dedmap -d google.com yahoo.com facebook.com localhost
$ dedmap google.com
$ dedmap google.com yahoo.com
$ dedmap 1.1.1.1 2.2.2.2 3.3.3.3
$ dedmap 1.1.1.1-100 google.com (Perform a tcp scan on all the hosts without pinging to bypass firewall icmp block)
$ dedmap -p 20 1.1.1.1
$ dedmap -p 20,21,22 1.1.1.1
$ dedmap -sm lan -p 21 192.168.1.1-255 (Perform a tcp port scan in lan mode on all the live hosts)
$ dedmap -s 1.1.1.1-255
$ dedmap -sr 1.1.1.1-255 (Perform a reverse dns lookup on all the live targets in the network)
$ dedmap -st 1.1.1.0-255 (To scan only the hosts which are alive in the network)
$ dedmap -w report.txt 127.0.0.1
```
### Additional Notice :-
 - This tool is expected to have lots of bugs as it is in a very early stage.

 - This tool has not been tested in Windows yet and will not work most probably. Feel free to experiment.

 - UDP scanning is not working as of now but will be fixed soon.

### Limitations as of now :-

 - UDP SCAN NOT WORKING PRESENTLY!!!!

 - IS SLOW AS NO MULTI-THREADING CONCEPTS USED IN THE PROGRAM.

 - THE USER MUST MAINTAIN A SEQUENCE "dedmap <options> <target>"

 - THE TOOL SUPPORTS IP-RANGE ONLY IN THE LAST OCTET .i.e 1.1.1.(1-200)  --> This is also a safety measure to prevent the user from scanning the ENTIRE INTERNET (1-255.1-255.1-255.1-255) and blowing up his/her NIC, RAM, CPU and HARDDISK :p

### To Do :-
 - FIX UDP SCANNING

 - ADD SUPPORT FOR OS DETECTION IN OPTION

 - USE MULTITHREADING TO DRASTICALLY IMPROVE THE PERFORMANCE OF THE TOOL

 - TEST AND ADD SUPPORT FOR WINDOWS

 - INCLUDE NMAP SCRIPTING ENGINE

 - BEAT NMAP :p

### Reporting :-
 - Report BUGS at ( https://github.com/7Ragnarok7/DEDMAP/issues )

[//]: # "References below :-"

[ps]:<https://www.techopedia.com/definition/4059/port-scanning>
[py]:<https://www.python.org>
[pp]:<https://pip.pypa.io/en/stable/installing>
[page]:<https://7ragnarok7.github.io/DEDMAP>



