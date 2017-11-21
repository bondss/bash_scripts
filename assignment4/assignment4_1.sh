#!/bin/bash

# Setting default value for desired freespace
default_FREESPACE=10

# Checking if overriding parameter is present, otherwise use default
if [ -z $1 ]; then
    FREESPACE=$default_FREESPACE
else
    FREESPACE=$1
fi

# Calculating usedspace based on desired freespace
USEDSPACE=$((100-$FREESPACE))

# Using internal awk variable "us" for comparing output of "df -h" with set USEDSPACE value
check=$(df -h | awk -v us="$USEDSPACE" '$5+0 > us{print "Free space is critical on " $6 " - " 100-$5+0"%" }') 

# If result of previous line not empty, print it, every mount point from new line
#+ otherwise it's OK
if [[ -n "$check" ]]; then
    echo "$check" | sed 's/%/\%/g'
else
    echo "Enough freespace on all filesystems"
fi

exit 0
