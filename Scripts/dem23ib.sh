#!/bin/bash
#shell script to paly with arrays

arr=(63 34 72 31 15 81 69 10 44 58 62 25 41 9 92)

echo "Number of elements i.e. size = ${#arr[*]}"
echo -e "\nElements before sorting"
echo "Array Elements = ${arr[*]}"
echo "arr[0] = ${arr[0]}"
echo ""

#sorting using 1-optimised bubble sort
i=0
j=0
temp=0
ele1=0
ele2=0
len=`expr ${#arr[*]} - 1`
#arr=(63 34 72 31 15 81 69 10 44 58 62 25 41 9 92)
while [ $i -lt $len ]
do
	while [ $j -lt `expr ${#arr[*]} - $i - 1` ]
	do
		echo "i and j are $i , $j"
		ele1=${arr[$j]}
		ele2=${arr[`expr $j + 1`]}
		if [ $ele1 -gt $ele2 ]
		then
			temp=${arr[$j]}
			arr[$j]=${arr[`expr $j + 1`]}
			arr[`expr $j + 1`]=$temp
			echo "Values after swapping : ${arr[$j]} and ${arr[`expr $j + 1`]}"
		fi
		j=`expr $j + 1`
	done
	j=0
	i=`expr $i + 1`
	echo "i incremented to $i"
done


echo ""
echo -e "\nElements after sorting"
echo "Array Elements = ${arr[*]}"
echo "arr[0] = ${arr[0]}"


