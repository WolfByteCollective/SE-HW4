#!/bin/bash

grep -c "sample" file* |  grep -E ":[1-9]+[0-9]*$" | cut -d: -f1 | xargs grep -o "CSC510" | uniq -c | grep -E -v "^\s*[1-2] file" | cut -d: -f1 | gawk '{system("ls -l "$2 "| xargs echo "$1 ) }' | sort -k1,1nr -k6,6nr | gawk '{print $10}' |  cut -d/ -f2 | sed 's/file/filtered/g'