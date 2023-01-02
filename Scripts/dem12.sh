#!/bin/bash
#shell script to print table of a number using until loop

echo -n "Enter a number :: "
read n

i=1
until [ $i -ge 11 ]
do
	res=`expr $n \* $i`
	echo "$n * $i = $res"
	i=`expr $i + 1`
done







