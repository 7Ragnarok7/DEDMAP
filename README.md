# *DEDMAP*
[![Python-ico](https://github.com/7Ragnarok7/DEDMAP/blob/master/image-src/python-logo.png?raw=true)][py]  

##### DEDMAP is a ***Simple*** but ***Powerfull*** Cross-Platform TCP and UDP [Port Scanning][ps] tool made with ease to use and convinience in mind. 

Both TCP and UDP protocols have 0 to 65535 ports. These 65535 ports can be divided into the following three ranges:-
- System or well-known ports: from 0 to 1023
- User or registered ports: from 1024 to 49151
- Dynamic or private ports: all > 49151 

**DEDMAP** tries to scan a target ip or range of ip's and find services that are running and listening on some ports.

### Requirements :-  
 - [Python 3][py]
 - *A bit of love and care* :)
 
### Installation :-
 
```sh
$ git clone https://github.com/7Ragnarok7/DEDMAP.git
$ apt-get install python3 python3-pip
$ cd DEDMAP
$ chmod +x install.sh
$ ./install.sh
```

### Uninstallation :-
 
```sh
$ cd DEDMAP
$ chmod +x uninstall.sh
$ ./uninstall.sh
```





[//]: # "References below :-"

[ps]:<https://www.techopedia.com/definition/4059/port-scanning>
[py]:<https://www.python.org>



