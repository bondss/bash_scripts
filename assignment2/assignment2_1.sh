#!/bin/bash

# Asking user for his income and assigning it to variable
echo "Input your income (only number, no currency!): "
read income

#Calculating and displaying taxes for users depending on their income
if [ $income -lt 5000 ]; then
    echo "No tax for you!"
elif [[ $income -ge 5000 && $income -le 30000 ]]; then
    let "tax=$income/10"; echo "Your tax is: $tax"
else 
   let "tax=$income/5"; echo "Your tax is: $tax"
fi

exit 0
