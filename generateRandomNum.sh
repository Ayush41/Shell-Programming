#!/bin/bash

echo "Random number generation program"

echo "How many random nubers you wanna generate?"
read RNUMS

echo "Enter min range:"
read MIN_RANGE

echo "Enter max range:"
read MAX_RANGE 

#Generate random number within specific range
echo "Here are your $NUM_NUMBERS random numbers between $MIN_RANGE and $MAX_RANGE:"

for ((i = 1; i <= RNUMS; i++))
do
    RANDOM_NUMBER=$((RANDOM % (MAX_RANGE - MIN_RANGE + 1) + MIN_RANGE))
    echo $RANDOM_NUMBER
done


#startfnc(){
#	echo "Usage: $0 [-n num_numbers] [-r min_range max_range]"
 #   	echo "  -n num_numbers : The number of random numbers to generate"
  #  	echo "  -r min_range max_range : The range for the random numbers (inclusive)"
   # 	exit 1
#}


#generate_randomNum(){

#	echo $((RANDOM % (MAX_RANGE - MIN_RANGE + 1) + MIN_RANGE))		

#}
