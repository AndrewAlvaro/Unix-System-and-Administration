#!/bin/sh
echo "----------------------------System Information-------------------------------"

#Calls command 'free -h' to show Memory Details(Memory and Swap)
echo "Memory Details:"
free -h
echo

#Calls command 'df -h'to show Disk Space details in readable human format
echo "Disk Space:"
df -h
echo

#Calls command 'ifconfig -a' to show the status of network interface including interfaces that are down
echo "Network Connection:"
ifconfig -a
echo

#Calls command 'uptime' to show the system running time 
echo "Uptime:"
uptime 
echo "----------------------------------------------------------------------------"


