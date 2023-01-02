#!/bin/bash
#shell script to paly with arrays

arr=(63 34 72 31 15 81 69 10 44 58 62 25 41 9 92)

echo "Number of elements i.e. size = ${#arr[*]}"
echo -e "\nElements before sorting"
echo "Array Elements = ${arr[*]}"
echo "arr[0] = ${arr[0]}"
echo ""

#sorting using insertion sort
i=1
t=0
k=0
#arr=(63 34 72 31 15 81 69 10 44 58 62 25 41 9 92)
while [ $i -lt ${#arr[*]} ]
do
	temp=${arr[$i]}
	j=`expr $i - 1`
	echo "temp picked : $temp, with j value: $j"
	while [ $j -ge 0 -a $temp -lt ${arr[$j]} ]
	do
		t=`expr $j + 1`
		arr[$t]=${arr[$j]}
		echo "shifted to $t - compared : ${arr[$t]}"
		j=`expr $j - 1`
	done
	k=`expr $j + 1`
	arr[$k]=$temp
	echo "element inserted at $k - element : ${arr[$k]}"
	i=`expr $i + 1`
done

echo ""
echo -e "\nElements after sorting"
echo "Array Elements = ${arr[*]}"
echo "arr[0] = ${arr[0]}"


