#!/bin/bash

# This script accepts a file name that contains a string of A, G, C, and T characters,
# finds the biological reverse compliment of the DNA string, and writes the result to
# "reversecomp_<inputfile>"

if [[ ! -f ${@} ]]
then
	echo "The file ${@} cannot be found."
	exit 1
fi

cat ${@} | tr 'ATCG' 'TAGC' | rev
