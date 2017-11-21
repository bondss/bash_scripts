#!/bin/bash

path=$1

loop_folders() {
for element in "$1"/*
do
	if [ -d "$element" ]; then
		echo "Directory: "$element"" 
		echo -ne "\t"		
 		loop_folders "$element"
	elif [ -f "$element" ]; then
		#echo -ne "\t"
		echo "File "$element" has $(wc -l $element | awk '{print $1}') lines"
	
 	else
		echo "File: "$element""
	fi
done
}

loop_folders $1
