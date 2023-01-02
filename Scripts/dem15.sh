#!/bin/bash
#shell script to print all files in present directory

i=0
for entry in `ls`
do
	echo "$entry"
	i=`expr $i + 1`
done
echo "number of files: $i"




