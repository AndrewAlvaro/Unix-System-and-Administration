#!/bin/bash
echo "=================================================== Basic Profiler =================================================="

read -r -p "Please enter the program name: " programname

for programname in $programname; do
	if [[ $(ps -a | grep $programname | awk '{print $4}') == $programname ]];
                then	
			echo $programname
			if [[$($programname | wc -l) > 1]];
				then 
					echo"Please choose program"
			else
				echo"Only one program found"
			fi	
	else
		echo "No program found."

	fi
done 

