#!/bin/bash
#shell script to print non-recursive factorial and power of a given number

echo -n "Enter a number :: "
read num1

function factorial_n()
{
	n=$1
	f=1
	until [ $n -eq 0 ]
	do
		f=`expr $f \* $n`
		n=`expr $n - 1`
	done
	echo "Factorial is: $f"
}

factorial_n $num1

echo -n "Enter a base and exponent :: "
read b e

function power_e()
{
	base=$1
	exp=$2
	p=$base
	if [ $exp -ne 0 -o $exp -ne 1 ]
	then	
		while [ $exp -gt 1 ]
		do
			p=`expr $p \* $base`
			exp=`expr $exp - 1`
		done
		echo "power calculated is :: $p"
	else
		echo "power calculated is :: 1"
	fi
}

power_e $b $e

