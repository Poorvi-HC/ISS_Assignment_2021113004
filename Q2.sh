#!/bin/bash

awk -F '~' '{print $2 " once said," "\x22"$1"\x22" > "speech.txt"}' quotes_noline.txt


