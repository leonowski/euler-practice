#!/usr/bin/bash

#initialize array with first 2 fibonacci numbers
array=(1 2)

#actually, don't need to keep count
#keep count
#x=0


#while loop to put fibonacci sequence in array.  change upper range to get a limit.  this problem says the last number should be less than 4 million
while [[ ${array[-1]} -lt 4000000 ]];
do
  nextnum=$(( ${array[-1]}+${array[-2]} ))
  array+=("$nextnum")
#comment this out since it does nothing.  while loop goes without counting  #x=$((x+1))
done

#uncomment to print array line by line
#printf '%s\n' "${array[@]}"

#put even numbers in array in to new array
newarray=()
for i in "${array[@]}";
do

  if [[ $i%2 -eq 0 ]]; then
    newarray+=("$i")
  fi
done

#print new even array
#printf '%s\n' "${newarray[@]}"

#finally, add the elements of the new array.  they should all be even.

total=0
for z in "${newarray[@]}";
do
total=$((total + z))
##keeping count here## printf '%s\n' "$total"
done

printf '%s\n' "$total"

