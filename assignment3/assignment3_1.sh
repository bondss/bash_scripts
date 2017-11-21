#!/bin/bash

# Declaring variables for "until" loop
i=0
LIMIT=$#
array=($@)

# Check is there any arguments, no loops if there isn't
if [ -z "$1" ]
then
   echo "No command-line arguments"
else
# First running "for" loop
   echo "Result of \"for\" loop:"
  
   for arg
   do
       echo "$arg"
   done
 
# Second - "while" loop
   echo "Result of \"while\" loop:"

   while [[ -n "$@" ]]
   do
       echo "$1"
       shift  
   done

# At last - "until" loop
   echo "Result of \"until\" loop:"

   until [[ $i -eq $LIMIT ]]
   do
        echo ${array[i]}
        (( i++ ))
   done
fi

exit 0
