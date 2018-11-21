#!/bin/bash
trap "" 2
while :
do
echo "==================================================== Menu System ===================================================="
echo -e "Choose 1: to view Basic system information
Choose 2: to view Basic system information with post processing
Choose 3: for Find program
Choose 4: for Basic Profiler program
Choose 5: to exit" 
read character
echo "====================================================================================================================="
	case $character in 
		1) ./PBR1.sh
		;;
		2) read -r -p "Please enter input: 
					-a for No. of CPUs
					-b for current process priority(pid, user, command, nice number, priority)
					-c for total processors running under current user
					-d for No. of file descripitors owned by current user
					-e for maximum default number of file decriptors that can be opened by a process
					" input
			./PBR2.sh $input
        	;;
		3) ./PCR1.sh
		;;
		4) ./PCR2.sh
		;;
		5) echo "Exiting... Goodbye." 
			exit
        	;;   
		*) echo "Please enter the following."
	esac
done
