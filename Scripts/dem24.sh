#!/bin/bash
#shell script to check if a given string is a palindrome or not

str="nitin"
revstr=`echo "$str" | rev`

echo "$revstr $str"

if [ $str = $revstr ]
then
	echo "String is a palindrome"
else
	echo "String is not a palindrome"
fi




