#!/bin/bash

awk '!seen[$0]++' quotes_noline.txt
awk '!seen[$0]++' quotes_noline.txt > quotes_nolidu.txt
