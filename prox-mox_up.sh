#!/bin/bas
# Please check the check-list
# - 1. Bios WOL is enable
# - 2. wakeonlan is installed
#sudo apt-get install wakeonlan 
# - 3. check your interfaces names and select the one do be the transmitter (for the example we use eno1)
# - If the return of "sudo ethtool eno1" have "Wake-on: g" it's good, if not do ->
# - "sudo ethtool -s eno1 wol g"
# - 4. Banzai ! let's test the script if don't work look the readme ->
# https://github.com/Paul-CHAVANON/WOL 

sudo wakeonlan 1c:86:0b:2e:93:24 # Replace your mac
