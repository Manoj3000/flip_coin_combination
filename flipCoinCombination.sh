#!/bin/bash

echo "Welcome to flip coin combination program"

declare -A singlet
heads=0
tails=0
loop=100

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
hp=$(($heads*100/$loop))
tp=$(($tails*100/$loop))
echo "Heads Percent : $hp%"
echo "Tails Percent : $tp%"

declare -A doublet

hh=0
ht=0
th=0
tt=0

for((i=0;i<=$loop;i++))
do
	random=$((($RANDOM%4)+1))
        case $random in
		1)
			((hh++))
        	doublet[$random]=$((${doublet[$random]}+1))
	    ;;
		2)
			((ht++))
        	doublet[$random]=$((${doublet[$random]}+1))
	    ;;
		3)
			((th++))
        	doublet[$random]=$((${doublet[$random]}+1))
	    ;;
		4)
			((tt++))
        	doublet[$random]=$((${doublet[$random]}+1))
	    ;;
    esac
done
echo
echo "hh won $hh"
echo "ht won $ht"
echo "th won $th"
echo "tt won $tt"

hhp=$(($hh*100/$loop))
htp=$(($ht*100/$loop))
thp=$(($th*100/$loop))
ttp=$(($tt*100/$loop))

echo "HH Percent : $hhp%"
echo "HT Percent : $htp%"
echo "TH Percent : $thp%"
echo "TT Percent : $ttp%"
