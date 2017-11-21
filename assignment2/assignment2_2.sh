#!/bin/bash

# Promt user for terms
echo "Enter expression you want to calculate (example: 2+3)"
read input

# Convert given string to math expression
let "result=$input"

# Output result of math expression
echo $result

exit 0
