#!/bin/bash
filesdir=$1
searchstr=$2

if [ $# -ne 2 ]; then
	echo -e "ERROR: Invalid Number of arguments\nTotal number of arguments should be 2"
	echo -e "The order of arguments should be:\n1) File directory Path."
	echo -e "2) String to be searched in the specified directory path"
	exit 1
else
	if [ -d "${filesdir}" ]
	then 
		fileCount=$(find "$filesdir" -type f | wc -l)
		MatchinglinesCount=$(grep -r "$searchstr" "$filesdir" | wc -l)

		echo "The number of files are $fileCount and the number of matching lines are $MatchinglinesCount"
	else
		echo "${filesdir} doesn't represent a directory on the filesystem"
		exit 1
	fi
fi
