#!/bin/bash

# This script accepts a filename as an argument. This file contains two rows of characters. The script
# counts the number of differences in the file and writes the number to STDOUT

if [[ ! -f ${@} ]]
then
	echo "Cannot read file ${@}."
	exit 1
fi

# TODO: Write the algorithm
