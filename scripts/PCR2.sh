#!/bin/bash
echo "=================================================== Basic Profiler =================================================="
#prompts user for the programname to basic profile
read -r -p "Please enter the program name: " programname

for programname in $programname; do
	#if statement that grabs the programname the user has input from the display of ps and matching it with cmd
	if [[ $(ps -a | grep $programname | awk '{print $4}') == "$programname" ]];
                then	
			#prompts user yes or no to monitor the memory and CPU utilization of the program selected
			read -r -p "Would you like to monitor the memory and CPU utilization of $programname? [y/N] " response1
			for response1 in $response1; do
 			       	if [ $response1 == 'y' -o  $response1 == 'Y' ];
                			then
						echo "Press 'q' to exit."
						#grabs the pid of the program by using ps and matching it with cmd
						pidno=$(ps -a | grep $programname | awk '{print $1}')
						#executing command top with the pid of the program to monitor the program
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



