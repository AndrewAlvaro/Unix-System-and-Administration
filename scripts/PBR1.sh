#!/bin/sh
echo "----------------------------System Information-------------------------------"

echo "Memory Details:"
free -h
echo
echo "Disk Space:"
df -mh
echo
echo "Network Connection:"
ifconfig -a
echo
echo "Uptime:"
uptime
echo "----------------------------------------------------------------------------"


