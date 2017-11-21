#!/bin/bash

# Find path to /etc/resolv.conf
nameServFile=$(locate /etc/resolv.conf)

# Using "awk" utility and pattern "nameserver" at the beginning of line -> pass the result to "wc" utility and calculate count
nameServCount=$(awk '$1 ~ /^nameserver/' $nameServFile | wc -l)

echo -n "Quantity of nameservers: "; echo $nameServCount

exit 0
