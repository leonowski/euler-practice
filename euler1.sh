#!/usr/bin/bash


#for loop first to create array of numbers
for x in {1..999};
do
  if [ $(( $x % 3 )) -eq 0 ] || [ $(( $x % 5 )) -eq 0 ] ;
  then array+=($x)
  fi
done


#for loop again to add up array elements
tot=0
for i in ${array[@]}; do
  let tot+=$i
done
echo "Total: $tot"
