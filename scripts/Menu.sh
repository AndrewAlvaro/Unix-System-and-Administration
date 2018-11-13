#!/bin/bash
trap "" 2
echo "==================================================== Menu System ===================================================="
echo -e "Choose 1: for Find program 
Choose 2: for Basic Profiler program 
Choose 3: to exit" 
read character
echo "====================================================================================================================="

case $character in 
	1) ./PCR1.sh
	;;
	2) ./PCR2.sh
        ;;
	3) echo "Goodbye." 
		exit
        ;;   
	*) echo "Please enter the following. Exiting..."
esac

