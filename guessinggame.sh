#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
currentDirectory=$(pwd)
numberOffiles=$(ls -l $currentDirectory | grep -v '$d' | wc -l)
let numberOffiles=numberOffiles-1
echo "Welcome to the Guessing Game.
In this game you will have to guess a number of files in this directory.
Let's begin, please enter your number:"
read response
while [[ $response -ne $numberOffiles ]]
do
	if [[ $response -gt $numberOffiles ]]
	then
		echo 'Your guessing number is greater than our answer.
Please enter another guess:'
		read response
	else
		echo 'Your guessing number is smaller than our answer.
Please enter another guess:'
		read response 
	fi
done

echo "Winner, the number of files is" $numberOffiles
}
