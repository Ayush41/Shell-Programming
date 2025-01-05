#! /bin/bash

echo "This is a bash script basics"

echo "Arithmetic operation :"

#!/bin/bash

# Function to add two numbers
add() {
    echo "Addition: $(($1 + $2))"
}

# Function to subtract two numbers
subtract() {
    echo "Subtraction: $(($1 - $2))"
}

# Function to multiply two numbers
multiply() {
    echo "Multiplication: $(($1 * $2))"
}

# Function to divide two numbers
divide() {
    if [ $2 -ne 0 ]; then
        echo "Division: $(($1 / $2))"
    else
        echo "Error: Division by zero is not allowed"
    fi
}

# Main script
echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

add $num1 $num2
subtract $num1 $num2
multiply $num1 $num2
divide $num1 $num2
