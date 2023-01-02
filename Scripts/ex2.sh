#!/bin/bash
#shell script to print factorial of a number using recursion

function factorial()
{
	if (( $1 <=  1 ));
	then
		echo 1
	else
		last=$(factorial $(( $1 - 1 )))
		echo $(( $1 * last))
	fi
}


factorial 6

factorial 8

factorial 13

