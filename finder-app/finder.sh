#!/bin/sh
# Finder Shell Application
# Author : Ahmad Abdalmageed

# Variables passed to the Program
filesdir=$1
searchstr=$2

if [ $# -lt 2 ]; then
    echo "Arguments are missing "
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "$filesdir does not exists ... Exiting code error 1"
    exit 1
fi

filesCount=$(grep -c -in -r "$searchstr" "$filesdir" | wc -l)
matchingLines=$(grep -c -h -in -r "$searchstr" "$filesdir" | awk '{s+=$1} END {print s}')

echo "The number of files are $filesCount and the number of matching lines are $matchingLines"