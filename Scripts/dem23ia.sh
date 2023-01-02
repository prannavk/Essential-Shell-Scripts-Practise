#!/bin/bash
#shell script to paly with arrays

arr=(63 34 72 31 15 81 69 10 44 58 62 25 41 9 92)

echo "Number of elements i.e. size = ${#arr[*]}"
echo -e "\nElements before sorting"
echo "Array Elements = ${arr[*]}"
echo "arr[0] = ${arr[0]}"
echo ""

#sorting using selection sort
i=0
j=0
min=0
t=0
len=`expr ${#arr[*]} - 1`
#arr=(63 34 72 31 15 81 69 10 44 58 62 25 41 9 92)
while [ $i -lt $len ]
do
	min=$i
	echo "i picked and min set to: $i -> element : ${arr[$i]}"
	j=`expr $i + 1`
	while [ $j -lt ${#arr[*]} ]
	do
		if [ ${arr[$j]} -lt ${arr[$min]} ]
		then
			min=$j
			echo "min changed to : $min - ${arr[$min]}" 
		fi
		j=`expr $j + 1`
	done
	if [ $i -ne $min ]
	then
		t=${arr[i]}
		arr[$i]=${arr[$min]}
		arr[$min]=$t
		echo "element swapped with sorted end element: ${arr[$i]}" 
	else
		echo "min did not change => we can take ${arr[$i]} at i : $i  as new sorted end"
	fi
	i=`expr $i + 1`
done


echo ""
echo -e "\nElements after sorting"
echo "Array Elements = ${arr[*]}"
echo "arr[0] = ${arr[0]}"


