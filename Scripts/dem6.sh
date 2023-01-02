#!/bin/bash
#shell script to compare 2 numbers

echo -n "Enter 2 Numbers :: "
read n1 n2
max=0
if [ $n1 -eq $n2 ]
then
	echo "Both are equal";
elif [ $n1 -gt $n2 ]
then
	echo "$n1 is greater of the two";
else
	echo "$n2 is greater of the two";
fi

var=$(printf "%d" "'A")
var2=$(printf "%d" "'f")
svar=`expr $var + $var2`
echo -e "\n $svar";

v=true
echo $v

