#!/bin/bash
writefile=$1
writestr=$2


if [ $# -ne 2 ]; then
	echo -e "ERROR: Invalid Number of arguments\nTotal number of arguments should be 2"
	echo -e "The order of arguments should be:\n1) File Path (Including filename)."
	echo -e "2) String to be written in the specified file"
	exit 1
else
	# Extract directory path from the file path
    	dir_path=$(dirname "$writefile")

    	# Create the directory if it doesn't exist
    	mkdir -p "$dir_path"
    	
	echo "$writestr" > "$writefile"
	echo "Writing $writestr to $writefile"
fi
