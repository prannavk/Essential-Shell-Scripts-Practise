#!/bin/bash
#shell script to calculate volume and surface of a sphere

echo -n "Enter the radius of the sphere :: "
read rad

pi=3.142

sa=`echo "4 * $pi * $rad * $rad" | bc`
echo "Surface Area is : $sa";

v=`echo "$pi * $rad * $rad * $rad" | bc`
echo "Volume is: $v";
