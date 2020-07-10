#!/bin/bash -x
declare -A resultDictionary
read -p "Enter first value : " a
read -p "Enter second value : " b
read -p "Enter third value : " c
result1=$((a+b*c))
result2=$((a*b+c))
result3=$(( c+(a/b) ))
result4=$(( (a%b)+c ))
for((i=1;i<5;i++))
do
        resultDictionary[$i]="$((result$i))"
done
for((i=1;i<5;i++))
do
        array[$i]=${resultDictionary[$i]}
done
