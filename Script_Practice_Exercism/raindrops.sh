#!/usr/bin/env bash

function raindrop () {
    for((i=1;i<$1+1;i++)); do
        if (( i % 3 == 0  )) && (( i % 5 == 0  )) && (( i % 7 == 0  )); then
             echo "PlingPlangPlong"
        elif (( i % 3 == 0  )) && (( i % 5 == 0  )) && (( i % 7 != 0  )); then
             echo "PlingPlang"
        elif (( i % 3 == 0  )) && (( i % 5 != 0  )) && (( i % 7 == 0  )); then
             echo "PlingPlong"
        elif (( i % 3 != 0  )) && (( i % 5 == 0  )) && (( i % 7 == 0  )); then
             echo "PlangPlong"
        elif (( i % 3 == 0  )) && (( i % 5 != 0  )) && (( i % 7 != 0  )); then
             echo "Pling"
        elif (( i % 3 != 0  )) && (( i % 5 == 0  )) && (( i % 7 != 0  )); then
             echo "Plang"
        elif (( i % 3 != 0  )) && (( i % 5 != 0  )) && (( i % 7 == 0  )); then
             echo "Plong"
        else
             echo "$i"
          fi
     done
}

echo "Hello please input integer for raindrop challenge function: "

read input 

raindrop $((input))
