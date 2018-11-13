#!/bin/bash

read -r -p "Enter starting directory of search: "  path1



read -r -p "Enter the type of category to search for, please choose path, type, group or fstype: " typeoftosearch
for typeoftosearch in $typeoftosearch; do
	if [[ $typeoftosearch == 'path' ]];
		then
			typeoftosearch1="-print"
	elif [[ $typeoftosearch == 'type' ]];
		then
			typeoftosearch1="-type c"
	elif [[ $typeoftosearch == 'group' ]];
		then
                	typeoftosearch1="-group grp"
	elif [[ $typeoftosearch == 'fstype' ]];
		then
                	typeoftosearch1="-fstype typ"
	else
		echo "Please enter path, type, group or fstype to search for only."
		
	fi
done



read -r -p "Enter max depth of search? (1-9): " maxdepth
if ! [[ "$maxdepth" =~ ^[1-9]+$ ]]
	then 
		echo "Sorry please select number 1-9 only."
	fi


read -r -p "Follow symbolic links? [y/N] " response
for response in $response; do
	if [ $response == 'y' -o  $response == 'Y' ];
		then
			response1="-L"
	elif [ $response == 'n'  -o  $response == 'N' ];
                then
			response1="-P"	
	else
		echo "Please enter Y for Yes and N for No only."
 	fi
done

find  $response1 $path1 -maxdepth $maxdepth $typeoftosearch1

