#!/bin/bash

gawk -F',' '{ if ($3 ~ /2/ && $13 ~ /S/) print $0 }' titanic.csv | sed 's/female/F/; s/male/M/' | gawk -F',' '{ total += $7;  if ($7 > 0) count++ } END { print total/count}'