#!/bin/bash

echo "Welcome to flip coin combination program"

declare -A singlet
heads=0
tails=0
loop=10

for (( i=1; i<=$loop; i++ ))
do
    res=$((RANDOM%2))

    if [ $res -eq 0 ]
    then
        singlet[$res]=$((${singlet[$res]}+1))
        ((heads++))
    else
        singlet[$res]=$((${singlet[$res]}+1))
        ((tails++))
    fi
done


echo "Heads won $heads"
echo "tails won $tails"
echo 
hp=$(($heads*100/$loop))
tp=$(($tails*100/$loop))
echo "Heads Percent : $hp%"
echo "Tails Percent : $tp%"