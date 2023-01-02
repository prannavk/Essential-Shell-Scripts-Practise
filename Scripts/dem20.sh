#!/bin/bash
#shell script to perfrom +,-,* and/ operations -> basic simple calculator

function addition_()
{
	echo `echo "$1 + $2" | bc`
}
function substraction_()
{
	echo `echo "$1 - $2" | bc`
}
function multiplication_()
{
	echo `echo "$1 * $2" | bc`
}
function division_()
{
	echo `echo "$1 / $2" | bc`
}

echo -n "Enter 2 numbers :: "
read n1 n2

echo -e "Pick option:\n1.Add\n2.Substract\n3.Multiply\n4.Divide"
read opt

case $opt in
	1)
	echo -n "Sum : "
	addition_ $n1 $n2
	;;
	2)
	echo -n "Difference : "
	substraction_ $n1 $n2
	;;
	3)
	echo -n "Product : "
	multiplication_ $n1 $n2
	;;
	4)
	echo -n "Quotient : "
	division_ $n1 $n2
	;;
	*)
	echo "Invalid Option"
	;;
esac



