#NAME: JUDD MARC ODOYO
#REG NO: SCT211-0744/2021

#!/bin/bash

sum=0

echo "Enter 5 numbers"
for ((i=1; i<=5; i++))
do
    read -p "Number $i: " num
    sum=$((sum + num))
done

echo "The sum of the 5 numbers is: $sum"

