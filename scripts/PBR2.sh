#!/bin/bash

while getopts ":abcde" opt; do
	case $opt in
		a)echo "No. of CPU Cores:"
		       	cat /proc/cpuinfo | awk '/processor/{print $3}' | wc -l 
			>&2
		;;
		b) echo "Current process priority(pid, user, command, nice number, priority):"
			ps -o pid,user,comm,nice,pri 
			>&2
		;;
		c) echo "Total"
			ps --user $USER -o pid,user,comm
                        >&2
                ;;
		d) echo "h2"
                        >&2
                ;;
		e) echo "h3"
                        >&2
                ;;

		\?) echo "Invalid option: -$OPTARG" >&2
		;;
	esac
done
