#!/bin/bash
#shell script to check files in path, see if the file has x permission or not, if yes, remove the execute permissions on it

echo -n "Enter Path :: "
read path

if [ -e $path ]
then
	echo "Valid Path Given"
	for var in "$path"/*
	do
		if [ -f $var ]
		then
			echo "A file is found with name: $var"
			if [ -x $var ]
			then
				chmod 0664 $var
				echo -e "\t This file had executable permissions which have been revoked"
			else
				echo -e "\t This file does not have executable permisisions"
			fi
		elif [ -d $var ]
		then
			echo "A directory is found with name: $var"
		else
			echo "A file found of some other type"
		fi
	done
else
	echo "Invalid Path Given"
fi




