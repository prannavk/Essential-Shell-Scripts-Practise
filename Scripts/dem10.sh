#!/bin/bash
#shell script to print month of the year for the given number input

echo -n "Enter month Number :: "
read mn

case $mn in
	1)
	echo "January"
	;;
	2)
	echo "Febuary"
	;;
	3)
	echo "March"
	;;
	4)
	echo "April"
	;;
	5)
	echo "May"
	;;
	6)
	echo "June"
	;;
	7)
	echo "July"
	;;
	8)
	echo "August"
	;;
	9)
	echo "September"
	;;
	10)
	echo "October"
	;;
	11)
	echo "November"
	;;
	12)
	echo "December"
	;;
	*)
	echo "invalid input"
	;;
esac

case $mn in
	1|3|5|7|8|10|12)
	echo "Month has 31 days"
	;;
	2)
	echo "Month has either 28 or 29 days"
	;;
	4|6|9|11)
	echo "month has 30 days"
	;;
esac

echo "gregorian calendar"



