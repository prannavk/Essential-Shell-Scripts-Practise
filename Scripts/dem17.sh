#!/bin/bash
#shell script to express a given path

echo -n "Enter path :: "
read path

file_c=0
dir_c=0

if [ -e $path ]
then
	echo "This is a valid path"
	for entry in "$path"/*
	do
		if [ -f $entry ]
		then
			file_c=`expr $file_c + 1`
			echo "This is a Regular file $entry"
			cat $entry
		elif [ -d $entry ]
		then
			dir_c=`expr $dir_c + 1`
			echo "This is directory $entry"
			ls $entry
		else
			echo "File of some other type"
		fi
	done
	echo "Number of files : $file_c and Number of Directories: $dir_c"
else
	echo "Given path is invalid"
fi


