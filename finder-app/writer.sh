#!/bin/sh
# Writer Script
# Author : Ahmad Abdalmageed


wrtieFile=$1
wrtieStr=$2

if [ $# -lt 2 ]; then
    echo "Arguments are missing "
    exit 1
fi

# Create a File with path writeFile
echo "$wrtieStr" > "$wrtieFile"

if [ $? -eq 1 ]; then
    echo "Something Wrong"
    exit 1
fi