#!/bin/bash
#shell script to perform string comparison

w="Sky"
x="Hello"
y="Hello"
z="Arch"


if [ "$x" = "$y" ]; then
	echo "Same"
else
	echo "DIfferent"
fi

[ "$y" = "$z" ] && echo "SAme" || echo "DIfferent"

#pattern matching using ==
if [[ "$z" == *"ch"* ]]; then
	echo "FOund!"
else
	echo "Not found!"
fi

[[ "$w" =~ .*k.*  ]] && echo "K is present" || echo "K not present"

if [[ "$w" > "$z" ]]; then
	echo "Lexicographically greater"
else
	echo "Lexicographically smaller"
fi

n=NULL

if [ -z $n ]; then
	echo "is not null"
else
	echo "is null"
fi




