#!/bin/bash

while getopts ":abcde" opt; do
	case $opt in
		a)echo "No. of CPU Cores:"
		       	cat /proc/cpuinfo| awk '/cpu cores/{print $4}'
			>&2
		;;
		b) echo "Current process priority(pid, user, command, nice number, priority):"
			ps -o pid,user,comm,nice,pri 
			>&2
		;;
		c) echo "Total processors running under current user:"
			ps --user $USER -o pid,user,comm | wc -l
                        >&2
                ;;
		d) echo "No. of file descripitors owned by current user"
			lsof -u $USER | wc -l
                        >&2
                ;;
		e) echo "h3"
                        >&2
                ;;

		\?) echo "Invalid option: -$OPTARG" >&2
		;;
	esac
done
