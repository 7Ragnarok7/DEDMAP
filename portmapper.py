#!/bin/python

#LIBRARIES
from socket import socket
from socket import gethostbyname
from time import time
import sys
import getopt

#SCANNER FUNCTION
def scanner(t, p):
	pass



#CONSTANTS
STARTING_TIME = time()
try: OPTS, ARGS = getopt.getopt(sys.argv[1:], 'sp:', ['sweep', 'port='])
except getopt.GetoptError: sys.exit("Something went wrong!")
print(OPTS)
print(ARGS)
ARGS_NUM = len(ARGS)
if ARGS:
	TARGET = gethostbyname(ARGS[0])
	print(TARGET)

