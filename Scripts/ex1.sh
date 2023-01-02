#!/bin/bash
#shell script to experiment with ascii value of A and different formats

echo -e "Ascii vaalue of E in different formats:\n";
echo "$(printf "%s" "'E")";
echo "$(printf "%d" "'E")";
echo "$(printf "%0o" "'E")";
echo "$(printf "%0x" "'E")";




