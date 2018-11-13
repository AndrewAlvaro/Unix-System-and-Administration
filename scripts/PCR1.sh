#!/bin/bash
echo "==================================================== Find Program ==================================================="

read -r -p "Enter starting directory of search: "  path1



read -r -p "Enter the type of category to search for, please choose path, type, group or fstype: " typeoftosearch
for typeoftosearch in $typeoftosearch; do
	if [[ $typeoftosearch == 'path' ]];
		then
			typeoftosearch1="-path"
				read -r -p "Enter path: " pathing
				pathing2="*$pathing"
	elif [[ $typeoftosearch == 'type' ]];
		then
			typeoftosearch1="-type"
				read -r -p "Enter file type:
				d block
				c character
				d directory
				p named pipe
				f regular file
				s socket
				D door" typing
	elif [[ $typeoftosearch == 'group' ]];
		then
                	typeoftosearch1="-group"
				read -r -p "Enter group: " grouping
	elif [[ $typeoftosearch == 'fstype' ]];
		then
                	typeoftosearch1="-fstype"
				read -r -p "Enter fstype: " fstyping
	else
		echo "Please enter path, type, group or fstype to search for only."
		
	fi
done



read -r -p "Enter max depth of search? (1-9): " maxdepth
if ! [[ "$maxdepth" =~ ^[1-9]+$ ]]
	then 
		echo "Sorry please select number 1-9 only."
	fi


read -r -p "Follow symbolic links? [y/N]: " response
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
echo "====================================================================================================================="

find  $response1 $path1 -maxdepth $maxdepth $typeoftosearch1 $pathing2 $typing $grouping $fstyping

