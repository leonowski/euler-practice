#!/bin/bash

#largest palindrome product of 2 3-digit numbers

palindrome() {
        reverse=$(echo "$1" | rev)
        echo "$reverse"

}

array=()
#nested loop to multiply from 99 down
for i in $(seq 99 -1 10); do
    for h in $(seq 99 -1 10); do
      prod=$((i*h))
  if [ "$prod" -eq "$(palindrome "$prod")" ]; then
  #echo products are $i and $h
  #printf '%s\n' "$prod"
  #exit
  array+=("$prod")
  fi
    done
done
printf '%s\n' "${array[@]}"
