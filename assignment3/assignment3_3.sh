#!/bin/bash

# Doing one space indent depending on how deep into the tree we are
doindent()
{
    j=0;
    while [ "$j" -lt "$1" ]; do
      echo -en "  " 
      j=`expr $j + 1`
    done
}

# Recursive function to traverse through directories
traverse() 
{
  ls "$1" | while read i
  do
    doindent $2
    if [ -d "$1/$i" ]; then
      echo "Directory: $1/$i"
      traverse "$1/$i" `expr $2 + 1`
    else 
      echo "File "$1/$i" has $(wc -l $1/$i | awk '{print $1}') lines"
    fi
  done
}

# If no positioning parameter - use current directory
if [ -z "$1" ]; then
  traverse . 0
else
  traverse "$1" 0
fi

exit 0
