#!/bin/bash
echo "=================================================== Basic Profiler =================================================="

read -r -p "Please enter the program name: " programname

for programname in $programname; do
	if [[ $(ps -a | grep $programname | awk '{print $4}') == "$programname" ]];
                then	
			read -r -p "Would you like to monitor the memory and CPU utilization of $programname? [y/N] " response1
			for response1 in $response1; do
 			       	if [ $response1 == 'y' -o  $response1 == 'Y' ];
                			then
						echo "Press 'q' to exit."
						pidno=$(ps -a | grep $programname | awk '{print $1}')
						top -p $pidno
        		       	elif [ $response1 == 'n'  -o  $response1 == 'N' ];
                			then
                        			echo "Goodbye..."
        			else
                			echo "Please enter Y for Yes and N for No only."
			fi
		done
	else
		echo "No program found, Please be more specific."
	fi 
done
echo "====================================================================================================================="



