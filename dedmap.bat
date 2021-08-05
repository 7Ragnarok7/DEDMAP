@echo off

SET F="windows_placeholder"

IF EXIST %F% (
  pip3 install -U pip
  pip3 install -r requirements.txt
  del %F%
  pyfiglet -L fonts/Bloody.flf
)

python dedmap %*