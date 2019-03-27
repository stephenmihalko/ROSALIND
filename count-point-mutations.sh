#!/bin/bash

# This script accepts a filename as an argument. This file contains two rows of characters. The script
# counts the number of differences in the file and writes the number to STDOUT

if [[ ! -f ${@} ]]
then
	echo "Cannot read file ${@}."
	exit 1
fi

# a. Use head and tail to get first and last lines from the file
# b. Fold the lines to get one character per line
# c. "sdiff -" tells it to take one "file" from STDIN
# d. Use process substitution to pipe in the "second file"
# e. Search for lines with either < or | to identify where differences exist
# f. Count the grepped lines
head -n1 ${@} | fold -w 1 | sdiff - <(tail -n1 ${@} | fold -w 1) | grep '[<|\|]' | wc -l
