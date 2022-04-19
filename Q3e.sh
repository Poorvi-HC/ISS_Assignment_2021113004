#!/bin/bash
filename=quotes_nolidu.txt
grep -o -E '\w+' $filename | sort -u -f > unique_words.txt
grep -o -E '\w+' $filename > all_words.txt

n=1
while read line;
do
	count=$(grep -o -i $line all_words.txt | wc -l)
	echo "Word:<$line> - Count of repetition: [$count] "
	n=$((n+1))
done < unique_words.txt

