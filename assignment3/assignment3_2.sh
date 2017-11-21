#!/bin/bash

# Set path to /etc/resolv.conf
nameServFile=/etc/resolv.conf

# Using "awk" utility and pattern "nameserver" at the beginning of line -> pass the result to "wc" utility and calculate count
nameServCount=$(grep -c "nameserver" $nameServFile)

echo -n "Quantity of nameservers: "; echo $nameServCount

exit 0
