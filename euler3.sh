#!/usr/bin/bash

#lets use functions this time Noel so we aren't lame
#to check for prime, see if its divisible by 2 through the squareroot of the number.


#using bc.  is that cheating?  :)
sqrt() {
echo -e "sqrt($1)\\nquit\\n" | bc -q -i | head -2 | tail -1
}


primecheck() {

#convert sqrt to int cause we can't loop through float
sqint=$(sqrt "$1")
for i in $(eval echo "{2..$sqint}")
do
  if [[ $1%$i -eq 0 ]]; then
  echo 0
  break 2
  else echo 1
  break 2
  fi
done
}

#lets make an array to get divisibles first
array=()
for x in $(eval echo "{1..$1}")
do
  if [[ $1%$x -eq 0 ]];
    then
    array+=("$x")
  fi
done


#now lets filter out the divisble array and keep only primes
primearray=()
for z in "${array[@]}";
  do
    if [[ $(primecheck "$z") -eq 1 ]];
    then
      primearray+=("$z")
    fi
  done

#largest prime factor should be 2nd to last element in primearray
printf '%s\n' "${primearray[-2]}"
