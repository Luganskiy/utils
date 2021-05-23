#!/bin/bash

#Variables
os_version=$(cat /etc/issue | sed -n 1p | cut -d' ' -f1-3)
kern_version=$(uname -r)
all_ifip=$(ip -4 -o a | cut -d ' ' -f 2,7 | cut -d '/' -f 1)
sys_uptime=$(uptime)
ram_info=$(free -mh)
logged_user=$(who | cut -d' ' -f1 | sort | uniq)

#Print system information
printf "System Overview util\n"
echo "-------------------------------"
printf "OS type:\t %s $OSTYPE\n\n"
echo "-------------------------------"
printf "OS version:\t %s $os_version\n\n"
echo "-------------------------------"
printf "kernel version:\t %s $kern_version\n\n"
echo "-------------------------------"
printf "List of the network interfaces and IPv4 addresses on server:\n"
echo "-------------------------------"
printf "%s$all_ifip \n\n"
echo "-------------------------------"
printf "System uptime:\t $sys_uptime\n\n"
echo "-------------------------------"
printf "RAM usage:\n $ram_info\n\n"
echo "-------------------------------"
printf "Logged users:\t $logged_user\n\n"
