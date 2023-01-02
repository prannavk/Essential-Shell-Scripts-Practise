#!/bin/bash
#shell script to print binary and decimal and hexadecimal and octal if input is 0 or 1, decimal if not...


echo -n "Enter a single character :: "
read e

#if [ $e -le 0 ]
#then
#	echo "Its a signed decimal digit - Accepted in Decimal, Octal and Hexadecimal"
#else
#	case $e in
#	0|1|2|3|4|5|6|7|8|9)
#		echo "Unsigned Digit -  Accepted in Decimal, Octal and Hexadecimal System"
#		if [ $e -eq 0 -o $e -eq 1 ]
#		then
#			echo "Accepted in Binary too"
#		fi
#		;;
#	'A'|'B'|'C'|'D'|'E')
#		echo "Character accepted in Hexadecimal System"
#		;;
#	*)
#		echo "Not accepted in binary, octal, decimal or hexadecimal"
#		;;
#	esac
#fi

case $e in
	'A'|'B'|'C'|'D'|'E')
		echo "Accepted in Hexadecimal only"
		;;
	'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9')
		echo "Accepted in Decimal, Octal and Hexadecimal"
		if [ $e == '0' -o $e == '1' ]
		then
			echo "Accepted in Binary too"
		fi
		;;
	*)
		echo "Not accepted anywhere"
		;;
esac










