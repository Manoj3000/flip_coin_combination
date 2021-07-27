#!/bin/bash

echo "Welcome to flip coin combination program"

res=$((RANDOM%2))

if [ $res -eq 0 ]
then
    echo "Heads win"
else
    echo "Tails win"
fi
