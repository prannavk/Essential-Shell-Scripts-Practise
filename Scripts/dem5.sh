#!/bin/bash
#shell script to print area of right angled triangle

echo -n "Enter base length :: "
read b

echo -n "Enter height :: "
read h

ar=`echo "0.5 * $b * $h" | bc`
echo "Area of the Right angled Triangle is: $ar"






