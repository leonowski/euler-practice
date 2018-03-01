#!/bin/bash

#largest palindrome product of 2 3-digit numbers

#largest product of two 3-digit numbers 999x999
x=$(( 999 * 999 ))

#loop through backwards and find the palindrome number
for i in $(seq $x -1 1)
  do
  reverse=$(echo "$i" | rev)
  if [ $i -eq $reverse ];
  then
  printf '%s\n' "$i"
  break 2
  fi
done
