#!/usr/bin/env bash"

function guessinggame {
    n=$(ls | wc -l)
    echo "Please guess how many files there are in the current directory"
    while :
    do
        read response
        echo "Your answer is: $response"
        if [[ $response -eq n ]]
        then
            echo "Congratulations! you guessed correctly"
            exit 0
        elif [[ $response -gt n ]]
        then
            echo "Your answer is greater than the number of files. Please try again."
        elif [[ $response -lt n ]]
        then
            echo "Your answer is less than the number of files. Please try again."
        fi
    done
}
guessinggame