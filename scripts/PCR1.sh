#!/bin/bash

read -p "Enter starting directory of search: " $path

read -r -p "Enter thing to search for: " typeoftosearch
for typeoftosearch in $typeoftosearch; do
	if [[ $typeoftosearch == 'path' ]];
		then
			$typeoftosearch = path
	elif [[ $typeoftosearch == 'type' ]];
		then
			$typeoftosearch = type
	elif [[ $typeoftosearch == 'group' ]];
		then
                	$typeoftosearch = group
	elif [[ $typeoftosearch == 'fstype' ]];
		then
                	$typeoftosearch = fstype
	else
		echo "Please enter path, type, group or fstype to search for only.";
	fi
done
read -r -p "Follow symbolic links? [y/N]" response
for response in *; do
case "$response" in 
	y|Y)
		$reponse = yes
	;;
	n|N)
		$reponse = no
	;;
	*)
		echo "Please enter Y for Yes and N for No only."
esac 
done
