#!/usr/bin/bash

#lets use functions this time Noel so we aren't lame
#to check for prime, see if its divisible by 2 through the squareroot of the number.


#using bc.  is that cheating?  :)
#get sqrt and convert to int
sqrt() {
float=$(echo "sqrt ( $1 )" | bc -l)
echo ${float%%.*}
}

primecheck() {

sqint=$(sqrt "$1")
for i in $(eval echo "{2..$sqint}")
do
  if [[ $1 -eq 2 || $1 -eq 3 ]]; then
  echo 1
  break 
  elif [[ $1%$i -eq 0 ]]; then
  echo 0
  break 
  elif [[ $i -eq $sqint ]]; then
  echo 1
  fi
done
}


#theres a better approach to this.  instead of making arrays, we just need to find the first prime going backwards through a loop.
#I'll keep the old code commented below so I don't forget

#another idea is to ignore numbers that aren't primes immediately so it doesnt get sent to primecheck

for x in $(seq "$1" -1 1)
 do
   lastdigit="${x: -1}"
   if [[ "$lastdigit" -eq "0" ]] || [[ "$lastdigit" -eq "2" ]] || [[ "$lastdigit" -eq "4" ]] || [[ "$lastdigit" -eq "6" ]] || [[ "$lastdigit" -eq "8" ]]; then
   continue

   elif [[ $1%$x -eq 0 && $(primecheck $x) -eq 1 ]]; then
   printf '%s\n' "$x"
   break 
  fi
done












###OLD ARRAY CODE BELOW###
#lets make an array to get divisibles first
#array=()
#for x in $(eval echo "{1..$1}")
#do
#  if [[ $1%$x -eq 0 ]];
#    then
#    array+=("$x")
#  fi
#done


#now lets filter out the divisble array and keep only primes
#primearray=()
#for z in "${array[@]}";
#  do
#    if [[ $(primecheck "$z") -eq 1 ]];
#    then
#      primearray+=("$z")
#    fi
#  done

#largest prime factor should be last element in primearray
#printf '%s\n' "${primearray[-1]}"


