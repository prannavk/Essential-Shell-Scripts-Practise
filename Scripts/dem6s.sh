#!/bin/bash
#shell script to calculate area of circle

echo -n "Enter radius :: "
read rd

area=`echo "3.142 * $rd * $rd" | bc`
echo "area of circle is: $area"




