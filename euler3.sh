#!/usr/bin/bash


#lets make an array to get divisibles first by calculating factors!

factors=()
current=$1
x=2
while [[ $x -gt 1 ]]
do
  if [[ $current%$x -eq 0 ]]; then
  factors+=("$x")
  current="$current"/"$x"
  x=$x
  mul=1
  for i in "${factors[@]}"; do
    mul=$(( mul * i ))
    done
#    echo $mul #uncomment to see progress of check done for break
    if [[ $mul -eq $1 ]]; then
    break
  fi
    fi
x=$((x+1))
done


#largest prime factor should be last element in primearray
printf '%s\n' "${factors[-1]}"


