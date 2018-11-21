#!/bin/bash
echo "==================================================== Find Program ==================================================="
#prompts the user the path of the starting search
read -r -p "Enter starting directory of search: "  path1


#prompts the user to enter the category to search for
read -r -p "Enter the type of category to search for, please choose path, type, group or fstype: " typeoftosearch
for typeoftosearch in $typeoftosearch; do
	
	#if statement when user selects path will run the following command
	if [[ $typeoftosearch == 'path' ]];
		then
			#makes variable equals to -path
			typeoftosearch1="-path"
			#prompts user to enter the path/directory to find
				read -r -p "Enter path: " pathing
			#pathing2 variable had to be made as * was needed in the find command to complete the path finding
				pathing2="*$pathing"
	
	#elif statement when user selects type will run the following command			
	elif [[ $typeoftosearch == 'type' ]];
		then
			#make variable equals to -type
			typeoftosearch1="-type"
			#prompts user to enter the type of file to find
				read -r -p "Enter file type:
				b block
				c character
				d directory
				p named pipe
				f regular file
				s socket
				D door
				" typing
	
	#elif statement when user selects group will run the following command	
	elif [[ $typeoftosearch == 'group' ]];
		then	
			#make variable equal to -group
                	typeoftosearch1="-group"
			#prompts user to enter the grouping of file to find
				read -r -p "Enter group: " grouping
	
	#elif statement when user selects fstype will the following command
	elif [[ $typeoftosearch == 'fstype' ]];
		then	
			#make variable equal to -fstype
                	typeoftosearch1="-fstype"
			#prompts the user to enter the system file type to find
				read -r -p "Enter fstype: " fstyping
	
	#if none of the above select will print out the following
	else
		echo "Please enter path, type, group or fstype to search for only."
		
	fi
done


#prompts user to the depth of the search
read -r -p "Enter max depth of search? (1-9): " maxdepth
#if statement if the user in put does not equal the following regex will ask the following
if ! [[ "$maxdepth" =~ ^[1-9]+$ ]]
	then 
		echo "Sorry please select number 1-9 only."
	fi

#prompts the user to enter yes or no to follow symbolic links in the search
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
#find command is executed with the following variable implemented for the search
find  $response1 $path1 -maxdepth $maxdepth $typeoftosearch1 $pathing2 $typing $grouping $fstyping
echo "====================================================================================================================="
echo "Result finished."

