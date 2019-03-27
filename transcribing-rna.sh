#!/bin/bash

# This script accepts a filename of a text file containing a string of A, C, G, and T.
# It converts the Ts in the string to Us and writes the output to a file "translated_<inputfile>"

if [[ ! -f ${@} ]]
then
	echo "The file ${@} cannot be read."
	exit 1
fi
