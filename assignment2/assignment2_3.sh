#!/bin/bash

# Define origin string
BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."

# Display origin string
echo $BUFFETT

# First step: replace first "snow" with "foot" 
BUFFETT1="${BUFFETT/snow/foot}"
echo $BUFFETT1

# Second step: delete remaining "snow"
BUFFETT2="${BUFFETT1/snow/}"
echo $BUFFETT2

# Third step: replace "finding" with "getting"
BUFFETT3="${BUFFETT2/finding/getting}"
echo $BUFFETT3

# Fourth step: remove everything after "wet"
BUFFETT4="${BUFFETT3%* and*}"

# Output final result
echo $BUFFETT4
