#!/bin/bash
#shell script to count files and dirs present in present directory 

file_c=0
dir_c=0
for entry in `ls`
do
	if [ -f $entry ]
	then
		file_c=`expr $file_c + 1`
	elif [ -d $entry ]
	then
		dir_c=`expr $dir_c + 1`
	else
		echo "N"
	fi
done

echo "Number of Files :: $file_c Number of Directories :: $dir_c"





