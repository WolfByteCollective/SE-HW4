#!/bin/bash

grep -c "sample" file* | grep -E "[1-9][0-9]*$" | cut -d: -f1 | xargs grep -o "CSC510" | uniq -c | sort -r | grep -E -v "^\s*[1-2]" | cut -d: -f1 | grep -Eo "file_[0-9]+" | xargs ls -l | sort -k5,5nr | grep -Eo "file_[0-9]+" | sed 's/file/filtered/g'