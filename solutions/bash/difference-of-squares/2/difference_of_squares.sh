#!/usr/bin/env bash

square_of_sum() {
    local N=$1
    local sum=0
    
    # while [[ "$i" -le "$N" ]]; do
    #     sum=$((sum + i))
    #     (($i + 1))
    # done

    sum=$(( N*(N+1)/2 ))
    echo $((sum * sum))
}

sum_of_squares() {
    local N=$1
    local sum=0

    # while [[ "$i" -le "$N" ]]; do
    #     sum=$((sum + i * i))
    #     (($i + 1))
    # done

    sum=$((N*(N+1)*(2*N+1)/6))
    echo "$sum"
}

difference_of_squares() {
    local N=$1
    sum1=0
    sum2=0

    # while [[ "$i" -le "$N" ]]; do
    #     sum1=$((sum1 + i))
    #     sum2=$((sum2 + i * i))
    #     (($i + 1))
    # done

    sum1=$(square_of_sum "$N")
    sum2=$(sum_of_squares "$N")

    echo $((sum1 - sum2))
}

if [[ $1 == "square_of_sum" ]]; then
    square_of_sum "$2"
elif [[ $1 == "sum_of_squares" ]]; then
    sum_of_squares "$2"
elif [[ $1 == "difference_of_squares" ]] || [[ $1 == "difference" ]]; then
    difference_of_squares "$2"
else
    echo "" >&2
fi