#!/bin/bash
#shell script to print the maximum value from the given values

echo -n "list of values hardcoded :: "
max=0
for var in 123 456 234 765 567 686 567 776 348 762 284 598 778 346 543 701 722 712
do
	echo -n "$var "
	if [ $var -gt $max ]
	then
		max=$var
	fi
done
echo -e "\n Max value found : $max"






