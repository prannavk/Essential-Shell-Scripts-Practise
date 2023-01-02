#!/bin/bash
#shell script to paly with arrays

arr=(3 4 7 1 5 8 9 10 44 58 62)

echo "Array Elements = ${arr[*]}"
echo "Number of elements i.e. size = ${#arr[*]}"
echo "arr[0] = ${arr[0]}"

#displaying all the elements using a loop
i=0
while [ $i -lt ${#arr[*]} ]
do
	echo "arr[$i] = ${arr[$i]}"
	i=`expr $i + 1`
done
echo ""

#searching an element - linear search
echo -n "Enter element to be searched :: "
read ele

j=0
ch=false
while [ $j -lt ${#arr[*]} ]
do
	if [ ${arr[$j]} -eq $ele ]
	then
		ch=true
		echo "Element Found at : $j location : ${arr[$j]}"
	fi
	j=`expr $j + 1`
done

if [ $ch == false ]
then
	echo "Element not found"
fi






