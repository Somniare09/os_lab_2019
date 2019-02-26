#!/bin/bash
cat /dev/null number.txt
{
    for(( i=1; i <= 150; i++))
    do 
    echo "$(od -An -N $1 -i /dev/random)"
    done
} >> number.txt