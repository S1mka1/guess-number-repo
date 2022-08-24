#!/usr/bin/env bash
# File: guessinggame.sh

function compare {
if [[ $1 -lt $2 ]]
then echo "Too high"
elif [[ $1 -gt $2 ]]
then echo "Too low"
elif [[ $1 -eq $2 ]]
then echo "Congratulation!"
fi
}

nfiles=$(ls -l | egrep "^-r" | wc -l)

response=-1

while [[ $nfiles -ne $response ]]
do
    echo "How many files are in the current directory:"
    read response
    if [[ $response =~ [0-9]+ ]]
    then 
        let response=$response
        compare $nfiles $response
    else
        echo "Not a number!"                                                                                                                                                                                        
    fi
done
