#!/bin/bash

echo "Enter a string: "
read string 
len=${#string}

for ((i=$len-1; i>=0; i--));
do
	reverse=$reverse${string:$i:1}
	#{<string>:<pos>:<length of string needed>}

done

echo $reverse

echo "**************************"

echo $(echo $reverse | tr '[A-Z]' '[B-ZA-A]'| tr '[a-z]' '[b-za-a]')

echo "**************************"

echo "Enter a string: "
read string_1
len=${#string_1}

for ((i=$len/2-1; i>=0; i--));
do
        rev=$rev${string_1:$i:1}
        #{<string>:<pos>:<length of string needed>}

done

for ((i=$len/2; i<$len; i++));
do
	rev=$rev${string_1:$i:1}
done

echo $rev

