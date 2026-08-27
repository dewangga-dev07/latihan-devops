#!/bin/bash

for FILE in *.txt
do
	TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
	cp $FILE $FILE.bak-$TIMESTAMP
	echo "file berhasil di backup:$FILE.bak-$TIMESTAMP"
done

