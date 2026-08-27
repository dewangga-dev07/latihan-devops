#!/bin/bash

backup_file() {
	FILE=$1
	TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
		if [ -f "$FILE" ]; then
			cp "$FILE" "$FILE.bak-$TIMESTAMP"
			echo "file berhasil di backup dengan nama $FILE.bak-$TIMESTAMP"
			echo "[$FILE.bak-$TIMESTAMP] berhasil terbackup" >> backup.log
		else
			echo "Error: file tidak ada"
			echo "[$TIMESTAMP] Error: file tidak ada" >> backup.log
		fi
	}
for FILE in *.txt
do
	backup_file "$FILE"
done 
