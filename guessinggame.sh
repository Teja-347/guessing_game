#!/usr/bin/env bash

# Function to count files in current directory
function file_count {
    echo $(ls -1 | wc -l)
}

# Store the actual number of files
actual_count=$(file_count)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Loop until user guesses correctly
while true
do
    read -p "Enter your guess: " guess

    # Check if input is a number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a number."
        continue
    fi

    if [[ $guess -lt $actual_count ]]
    then
        echo "Your guess is too low. Try again."
    elif [[ $guess -gt $actual_count ]]
    then
        echo "Your guess is too high. Try again."
    else
        echo "🎉 Congratulations! You guessed correctly."
        break
    fi
done
