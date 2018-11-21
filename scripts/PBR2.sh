#!/bin/bash

echo "====================================================================================================================="

while getopts ":abcde" opt; do
	case $opt in
		a)echo "No. of CPU Cores:"
			# 'cat /proc/cpuinfo' displays information of system processor | 'awk '/cpu cores/{print $4}'' will only prin				t the cpu cores line, fourth field of the letter from /proc/cpuinfo which displays the total CPU core(s)
		       	cat /proc/cpuinfo| awk '/cpu cores/{print $4}'
			>&2
		;;
		b)echo "Current process priority(pid, user, command, nice number, priority):"
			# 'ps -o pid,user,comm,nice,pri' displays the current process running with priority in format PID, user, com				mand, nice, priority	
			ps -o pid,user,comm,nice,pri
			>&2
		;;	
		c)echo "Total processors running under current user:"
			# 'ps --user $USER -o pid,user,comm' displays the total processors running under the current user with format 				of pid,user,command and 'wc -l' gives the listing of lines in number(s) equaling to the total of processor			     s running 
			ps --user $USER -o pid,user,comm | wc -l
                        >&2
                ;;
		d)echo "No. of file descripitors owned by current user:"
			#'lsof -u $USER' displays the number of file descripitors owned by the current user and 'wc -l' gives the lis			       ting of lines in number(s) equaling to the total of file descripitors
			lsof -u $USER | wc -l
                        >&2
                ;;
		e) echo "Maximum default number of file decriptors that can be opened by a process:"
			#'cat /proc/sys/fs/file-max' displays the maximum default number of file decriptors that can be opened by a p			       rocess
			cat /proc/sys/fs/file-max
			>&2
                ;;
		\?) echo "Invalid option: -$OPTARG">&2
		;;
	esac
done

echo "====================================================================================================================="

