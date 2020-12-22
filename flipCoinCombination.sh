#!/bin/bash

echo "Welcome to Flip Coin Combination"
read -p "Enter number of times you wish to flip a coin " n

H=0
T=1
HC=0
TC=0
count=$n

declare A singlet

while (( $count > 0 ))
do

	coinFlip=$(( RANDOM%2 ))

	if [ $coinFlip -eq 1 ]

	then
		singlet[$count]="H"
		((HC++))
	else
		singlet[$count]="T"
		((TC++))
fi
	((count--))
done

echo ${singlet[@]}

HeadPer=$((($HC*100)/$n))	#Calculating Percentage for Head and Tail Count
TailPer=$((($TC*100)/$n))

echo "Percentage of Head's: " $HeadPer
echo "Percentage of Tail's: " $TailPer


