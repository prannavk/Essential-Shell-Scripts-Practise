#!/bin/bash
#shell script to print table of a given number using while loop 

echo -n "Enter a number :: "
read num

echo "Table of $num"
i=1
while [ $i -le 10 ]
do
	res=`expr $num \* $i`
	echo "$num * $i = $res"
	i=`expr $i + 1`
done




