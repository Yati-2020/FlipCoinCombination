#!/bin/bash

echo "Welcome to Flip Coin Combination"

H=0
T=1

coinFlip=$(( RANDOM%2 ))

if [ $coinFlip -eq 1 ]

then
	echo "Heads"
else
	echo "Tails"
fi
