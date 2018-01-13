#! /bin/bash

# When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
echo "Please guess how many files are in the current directory and press [ENTER]:"
read guess

echo $guess

# Creating a function to evaluate how many files are in the current working directory:

count_files() {
  files_no=$(ls -1 | wc -l)
}

# Evaluating the number of files in the current working directory:
count_files

while [ $guess -ne $files_no ]
do
#If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
    echo $guess
    echo $files_no
    if (( $guess < $files_no ))
    then
        echo "Your guess is too low, try again!"
    else
        echo "Your guess is too high, try again!"
    fi

    echo "Please guess how many files are in the current directory and press [ENTER]:"
    read guess
done

#If the user's guess is correct then they should be congratulated and the program should end.
echo "Congratuliations, you guessed the correct number of files in the directory!"
