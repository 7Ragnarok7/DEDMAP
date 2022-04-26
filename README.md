# *DEDMAP* [![published](https://static.production.devnetcloud.com/codeexchange/assets/images/devnet-published.svg)](https://developer.cisco.com/codeexchange/github/repo/7Ragnarok7/DEDMAP) [![Featured on Openbase](https://badges.openbase.com/python/featured/dedmap.svg?token=m3YHZqfzOHQMq5xr0CDwE4OmXkLH3HTLBb8OUphl8Cc=)](https://openbase.com/python/dedmap?utm_source=embedded&amp;utm_medium=badge&amp;utm_campaign=rate-badge)
[![Dedmap-icon](https://github.com/7Ragnarok7/DEDMAP/blob/master/image-src/dedmap.jpg?raw=true)][page]  

##### DEDMAP is a ***Simple*** but ***Powerful***, ***Clever*** and ***Flexible*** Cross-Platform [Port Scanning][ps] tool made with ease to use and convenience in mind. 

Both TCP and UDP protocols have 0 to 65535 ports. These 65535 ports can be divided into the following three ranges:-
 - System or reserved ports: from 0 to 1023
 
 - User or registered ports: from 1024 to 49151
 
 - Dynamic or private ports: from 49151 to 65535 

**DEDMAP** tries to scan a target IP or range of IP's and find services that are running and listening on some ports.

**DEDMAP** can also scan a range of hosts to find live hosts.

### Read the Official Whitepaper [HERE](docs/dedmap_whitepaper.docx)

### Checkout the Official Video Walkthrough here --> [https://youtu.be/e1V83h4R5sI](https://youtu.be/e1V83h4R5sI)

### [CODE OF CONDUCT](CODE_OF_CONDUCT.md)

### [CONTRIBUTING](CONTRIBUTING.md)

### Requirements :- 
 - [Python 3][py]

 - [Pip][pp]

 - [Termux][tm] (if installing on an android device)

 - *A bit of love and care* :)

### Installation :-
 - Download the latest release from [RELEASES][RELEASES]
 
 - Extract the archive

 - Follow the steps below
```sh
$ cd DEDMAP
$ chmod +x install.sh
$ ./install.sh
```
 - Follow the above steps using ***termux-install.sh*** if installing for termux

All the additional requirements will be installed automatically.
Just execute the "install.sh" file ;)

The tool can be run without installing as well (./dedmap) but it is recommended to install it.
After installing the tool, the color of the **DEDMAP banner** will change from *WHITE* to *RED*. 

Update the tool by downloading the latest release and re-installing it again.

### Using the tool in Windows :-

- Initially, Double-Click or launch the ***dedmap.bat*** once from a command-prompt for installing the requirements.
- Subsequent to the above step, Lauch the tool using `dedmap` or `python dedmap` command from a command-prompt inside the dedmap root directory.

### Uninstallation :-
- Follow the steps below
```sh
$ cd DEDMAP
$ chmod +x uninstall.sh
$ ./uninstall.sh
```
 - Follow the above steps using ***termux-uninstall.sh*** if uninstalling for termux

### Highlights :-
 - Packed with lots of additional features all in one place.
 
 - Full Support for Android devices (*via* termux)

 - Supports IP-RANGES (1.1.1.1-100)

 - Supports Network Scanning (Ping Sweep)

 - Has a turbo mode (LAN mode) for network scanning. The turbo mode can be used both in LAN and wan but it is recommended to use only in LAN as it may decrease the accuracy of the scan in a wan network.
 
 - The wan mode can also be used in a LAN network for more accurate results. Lan mode = Performance, Wan mode = Accuracy.

 - Is flexible. Multiple scanning options can be combined based on requirements.

 - Is clever. Scans only the live targets if a network scan is combined with other scans.

 - Lists all the probable services/protocols being used by the respective open ports which are discovered.

 - Supports Verbose mode

 - Supports Saving the Output to a file. (The file generated is a ***dedmap file***. cat/type it to view it's contents properly in a shell environment)

 - Supports various port specification options

 - Is colorful. Provides colored event-based visual responses

### LEGEND/Color schemes :-
 - BLUE	  -->  FOR MARKING THE SUCCESSFUL STARTING AND COMPLETION OF THE PROGRAM
 
 - RED    -->  FOR MARKING STARTING/ENDING OF AN EVENT OR  ERROR
 
 - GREEN  -->  FOR MARKING A SUCCESSFUL HOST/PORT DISCOVERY AND HELP MENU

 - RESET  -->  FOR RESETTING TO DEFAULT SHELL COLOR

 - GRAY   -->  FOR MARKING AN UNSUCCESSFUL HOST/PORT DISCOVERY IN VERBOSE MODE

 - YELLOW -->  FOR MARKING DEBUGGING STATEMENTS

### Usage :-
```sh
$ dedmap [--option(s)] [target(s)]
```
 - By default, a TCP scan will be performed if no options are provided.

 - -t option must be exclusively provided if any other option is used like -p or -v or -n.

 - By default, the top 100 commonly used ports will be scanned if no ports are specified.

 - Long Options (--<options>) have more priority.

### Options :-
 - -h, --help              show this help message and exit

 - -v, --verbose           run in verbose mode

 - -d, --dns               performs a DNS lookup

 - -r, --rdns		   	   performs a reverse dns lookup

 - -p, --port<port(s)>     only scan specified port(s)
 -                         Ex: -p 21; -p 21,22,23;
 -						  -p top10; (scan top 10 commonly used ports)
 -                        -p top100; (scan top 100 commonly used ports)
 -                        -p top1000; (scan top 1000 commonly used ports)
 -                        -p system; (scan system ports from 0 to 1023)
 -                        -p user; (scan user ports from 1024 to 49151)
 -                        -p private; (scan private ports from 49152 to 65535)
 -                        -p all; (scan all ports from 0 to 65535)
 
 - -t, --tcp              perform a TCP scan (default scan if NO OPTIONS are specified)

 - -u, --udp              perform a UDP scan (Doesn't seems to work as of now using the socket in python)

 - -n, --net              perform a network scan

 - -m, --mode<wan/lan>    select the mode for network scan (default = wan)
 -                        Select lan mode(turbo mode) for better scanning speeds (upto 5x)
 -                        It is recommended to use the turbo mode only on a lan network
 -                        as it might result in loss of accuracy in wan networks
 -                        Ex: -nm lan; -nm wan;

 - -o, --out<filename>    saves the results in a file
 -                        Ex: -o report

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
$ dedmap -p top10 2.2.2.2
$ dedmap -p 20,21,22 1.1.1.1
$ dedmap -nm lan -p 21 192.168.1.1-255 (Perform a tcp port scan in lan mode on all the live hosts)
$ dedmap -n 1.1.1.1-255
$ dedmap -nr 1.1.1.1-255 (Perform a reverse dns lookup on all the live targets in the network)
$ dedmap -nt 1.1.1.0-255 (To scan only the hosts which are alive in the network)
$ dedmap -o report 127.0.0.1
```
### Additional Notice :-
 - The output file generated is a ***dedmap file***. Cat/Print it to view it's contents properly in a shell environment.

 - This tool is expected to have lots of bugs as it is in a very early stage.

 - This tool has not been tested in Windows yet and will not work most probably. Feel free to experiment.

### Disclaimer :-
 - This tool is made for educational & research purpose only. Use it with/on systems or networks you own or have permission from the owner. I shall not be held responsible for whatsoever you do with this tool.

### Limitations as of now / Known Issues :-
 - DEDMAP IS AN INDEPENDENT TOOL MADE FOR ONLY PORT-SCANNING AS IT'S MAIN GOAL. HENCE IT WILL NEVER SUPPORT FEATURES LIKE SERVICE/VERSION SCAN AS THEY DEPEND UPON NETCAT.
 
 - GENERATING A REPORT DOES NOT WORK PROPERLY IN WINDOWS.
 
 - IS SLOW AS NO MULTI-THREADING CONCEPTS USED IN THE PROGRAM.
 
 - UDP DOESN'T WORKS PROPERLY AS OF NOW.

 - THE USER MUST MAINTAIN A SEQUENCE "dedmap [--option(s)] [target(s)]"

 - THE TOOL SUPPORTS IP-RANGE ONLY IN THE LAST OCTET .i.e 1.1.1.(1-200)  --> This is also a safety measure to prevent the user from scanning the ENTIRE INTERNET (1-255.1-255.1-255.1-255) and blowing up his/her NIC, RAM, CPU and HARDDISK :p

### To Do :-
 - ~~[ ] FIX UDP SCANNING~~
 
 - [x] ADD COLORS TO THE REST OF THE OUTPUT TO PROVIDE EVENT-BASED VISUAL RESPONSES.
 
 - [x] TEST AND ADD SUPPORT FOR TERMUX
 
 - [x] TEST AND ADD SUPPORT FOR WINDOWS
 
 - [ ] USE MULTITHREADING TO DRASTICALLY IMPROVE THE PERFORMANCE OF THE TOOL

### Reporting :-
 - Report BUGS at [( https://github.com/7Ragnarok7/DEDMAP/issues )](https://github.com/7Ragnarok7/DEDMAP/issues)
 - Reporting guide/template [can be found here.](https://github.com/7Ragnarok7/DEDMAP/tree/master/.github/ISSUE_TEMPLATE)  
 
### Feedback :-
 - Share your feedback and discuss about the project at [(https://github.com/7Ragnarok7/DEDMAP/discussions)](https://github.com/7Ragnarok7/DEDMAP/discussions)

[//]: # "References below:-"

[ps]:<https://www.techopedia.com/definition/4059/port-scanning>
[py]:<https://www.python.org>
[pp]:<https://pip.pypa.io/en/stable/installing>
[page]:<https://7ragnarok7.github.io/DEDMAP>
[tm]:<https://play.google.com/store/apps/details?id=com.termux>
[RELEASES]:<https://github.com/7Ragnarok7/DEDMAP/releases>
