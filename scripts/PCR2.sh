#!/bin/bash

read -r -p "Please enter the program name: " programname

for programname in $programname; do
	if [[  == $programname ]];
                then	
			echo $progamname
	else
		echo nothing choose

	fi
done 

