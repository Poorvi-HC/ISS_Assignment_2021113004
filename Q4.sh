#!/bin/bash

IFS=","
echo "Enter array elements:"
read -a arr
k=${#arr[*]}
  
for ((i = 0; i<$k; i++)) 
do
    for ((j = 0; j<$k-$i-1; j++)) 
    do
	if ((${arr[j]} > ${arr[$((j+1))]}))
        then
            # swap 
            temp=${arr[$j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
  
echo ${arr[*]} 
