#!/bin/bash
#shell script to play with positional parameters
#prints sum if the positional params were numbers else it doesnt

echo "script name: $0"
echo "count of positional parameters : $#"
echo -e "positional parameters all : \n$*"
echo "user entered 2nd positional parameter $2"

sum=0
if [[ "$1" =~ .*[0-9].* ]]
then
	for param in $*
	do
		sum=`expr $sum + $param` 
	done
	echo -e "\nSum of positional params given : $sum"
fi



