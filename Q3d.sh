#!/bin/bash
filename='quotes_nolidu.txt'
n=1
while read line;
do
	count=$(wc -w <<< "$line")
	echo "Line No: <$n> - Count of Words:[$count] "
	n=$((n+1))
done < $filename


