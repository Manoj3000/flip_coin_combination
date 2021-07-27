#!/bin/bash

echo "Welcome to flip coin combination program"

#singlet
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

#doublet
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
echo "HH won $hh"
echo "HT won $ht"
echo "TH won $th"
echo "TT won $tt"

hhp=$(($hh*100/$loop))
htp=$(($ht*100/$loop))
thp=$(($th*100/$loop))
ttp=$(($tt*100/$loop))

echo "HH Percent : $hhp%"
echo "HT Percent : $htp%"
echo "TH Percent : $thp%"
echo "TT Percent : $ttp%"

#triplet
declare -A triplet

hhh=0
hht=0
hth=0
htt=0
thh=0
tht=0
tth=0
ttt=0

for((i=0;i<=$loop;i++))
do
	random=$((($RANDOM%8)+1))
        case $random in
		1)
			((hhh++))
        	Triplet[$random]=$((${Triplet[$random]}+1))
	    ;;
		2)
			((hht++))
        	Triplet[$random]=$((${Triplet[$random]}+1))
	    ;;
		3)
			((hth++))
        	Triplet[$random]=$((${Triplet[$random]}+1))
	    ;;
		4)
			((htt++))
        	Triplet[$random]=$((${Triplet[$random]}+1))
	    ;;
        5)
			((thh++))
        	Triplet[$random]=$((${Triplet[$random]}+1))
	    ;;
		6)
			((tht++))
        	Triplet[$random]=$((${Triplet[$random]}+1))
	    ;;
		7)
			((tth++))
        	Triplet[$random]=$((${Triplet[$random]}+1))
	    ;;
		8)
			((ttt++))
        	Triplet[$random]=$((${Triplet[$random]}+1))
	    ;;
    esac
done
echo
echo "HHH won $hhh"
echo "HHT won $hht"
echo "HTH won $hth"
echo "HTT won $htt"
echo "THH won $thh"
echo "THT won $tht"
echo "TTH won $tth"
echo "TTT won $ttt"

hhhp=$(($hhh*100/$loop))
hhtp=$(($hht*100/$loop))
hthp=$(($hth*100/$loop))
http=$(($htt*100/$loop))
thhp=$(($thh*100/$loop))
thtp=$(($tht*100/$loop))
tthp=$(($tth*100/$loop))
tttp=$(($ttt*100/$loop))

echo "HHH Percent : $hhhp%"
echo "HHT Percent : $hhtp%"
echo "HTH Percent : $hthp%"
echo "HTT Percent : $http%"
echo "THH Percent : $thhp%"
echo "THT Percent : $thtp%"
echo "TTH Percent : $tthp%"
echo "TTT Percent : $tttp%"
