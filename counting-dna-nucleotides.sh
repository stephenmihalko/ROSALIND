#!/bin/bash

# This file accepts the filename of a text file containing a sequence of A, C, G, and T.
# Counts the number of each letter in the sequence and echos the response to STDOUT

# Make sure file exists
if [[ ! -f ${@} ]]
then
	echo "The file ${@} cannot be found."
	exit 1
fi

# a. Read file contents
# b. Fold string into lines of length 1 (each character on separate line)
# c. Sort lines for uniq
# d. Find count of each letter
# e. Isolate only numbers
# f. Remove whitespace at beginning of line
# g. Isolate only numbers at beginning of lines
# h. Nice formatting by replacing newlines with spaces
cat ${@} | fold -w 1 | sort | uniq -c | awk '{print $1}' | tr '\n' ' '
