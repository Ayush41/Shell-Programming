#!/bin/bash

echo "Syntax of shell scriping"

name = "RON"
echo "Hellow, $name"

echo "loooping  trhough number 1 to 5: "
for i in {1..5}; do
echo "Number: $i"
done

echo "Enter a number:"
read number
if [$number -gt 10]; then
echo "The number is greater than 10."
else
echo "The number is 10 or less"
fi

sudo netstat -tuln

