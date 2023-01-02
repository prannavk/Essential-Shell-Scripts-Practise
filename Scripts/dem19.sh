#!/bin/bash
#shell script to demonstrate functions in shell script

function print_dec()
{
	num=`expr $1 - 1`
	echo "Number :: $num"
}
function print_inc()
{
	num=`expr $1 + 1`
	echo "Number :: $num"
}

echo -n "Enter a Number :: "
read number
echo -n "Pick an option :: 1.Increment or 2.Decrement ::  "
read opt

case $opt in
	1)
	print_inc $number
	;;
	2)
	print_dec $number
	;;
	*)
	echo "Invalid option"
	;;
esac




