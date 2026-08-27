#!/bin/bash

if [ -z "$1" ]; then
	read FILE
else
	FILE="$1"
fi
if [ -f "$FILE" ]; then
	TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
	cp "$FILE" "$FILE".bak-"$TIMESTAMP"
	echo "file sukses di backup dengan nama $FILE.bak-$TIMESTAMP" 
else
	echo "Erorr: file tidak ada"
	exit 1
fi
