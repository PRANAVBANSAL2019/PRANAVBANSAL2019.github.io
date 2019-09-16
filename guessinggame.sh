#!/usr/bin/env bash

echo "[The Guessing game]"

function question {
	echo "Please enter the number of files in the current directory:"
	read answer
    no_of_files=$(ls -1 | wc -l)
}

question

while [[ $answer -ne $no_of_files ]]
do
	if [[ $answer -lt $no_of_files ]] 
	then
		echo "Very low."
	else
		echo "Very high."
	fi
	question
done

echo "Hurrey! You got the correct answer, here is the list of files:"
echo "---" && ls -1