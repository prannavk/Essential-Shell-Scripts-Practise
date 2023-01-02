#!/bin/bash
#shell script to play with strings

s1="sunbeam infotech Hinjewadi Pune"
s2=`echo "$s1" | cut -d " " -f 3`
echo "$s2"

s3=$s1$s2
echo "s3 = $s3"



