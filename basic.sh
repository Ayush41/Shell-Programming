# !/bin/bash

echo "This is a simple bash script"

echo "Welcome to the world of Linux programming"

echo "Looping through a loop in bash shell"
for i in {1..6}
do
    echo "This is iteration number $i"
done

# Program to find even number in bash shell programming

# Take user input
echo "Enter a number :" 
read num

# function to check prime number
isPrime(){
    local n=$1
    if [$n -eq 1]; then
    return 1
    fi
    for((i=2;i*i<=n;i++)); do
        if [$((n%i)) -eq 0];
then 
    return 1
    fi
    done
    return 0
}

# check if number is prime
if isPrime $num; then
    echo "$num is a prime number"
else
    echo "$num is not a prime number"
fi
