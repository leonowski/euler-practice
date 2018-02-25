#!/usr/bin/bash

#initialize array with first 2 fibonacci numbers
array=(0 1)

x=0

while [[ $x < 10 ]];
do
  array+=${array[-1]}+${array[-2]}
  x=(${a[${#a[@]}+1]})
  printf '%s\n' "${array[@]}"
done

printf '%s\n' "${array[@]}"

#for loop again to add up array elements
#tot=0
#for i in ${array[@]}; do
#  let tot+=$i
#done
#echo "Total: $tot"
