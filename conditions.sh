#!/bin/bash

echo "Conditions & syntax in bash shell code"

echo "Enter your name :"
read name

echo "Enter your age :"
read age

adult=18

# condition to check if the person is adult or not

if ! [[ $age =~ ^[0-9]+$ ]] || [ $age -le 0 ]; then
    echo "Invalid age input"
    exit 1
fi

# check if user is an adult

if [ $age -ge $adult ]; then
    echo "You are an adult"
else
    echo "You are not an adult"
fi
