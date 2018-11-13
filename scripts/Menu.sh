#!/bin/bash
echo "==================================================== Menu System ===================================================="
echo -e "Choose 1: for Find program, Choose 2: for Basic Profiler program, Choose 3: to exit" 
read character
case $character in 
	1) ./PCR1.sh
	;;
	2) ./PCR2.sh
        ;;
	3) exit
        ;;   
	*) echo "Please enter the following."
esac
