#!/bin/bash

cek_ukuran() {
	FILE=$1
	UKURAN=$(stat -c%s "$FILE")
	if  [ "$UKURAN" -gt 100 ]; then
		echo "besar"
	else
		echo "kecil"
	fi
}
for FILE in *.sh
do
	HASIL=$(cek_ukuran "$FILE")
	echo "$FILE : $HASIL"
done
