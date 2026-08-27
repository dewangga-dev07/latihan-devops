#!/bin/bash

cek_isi() {
FILE=$1
UKURAN=$(stat -c%s "$FILE")
	if [ "$UKURAN" -eq 0 ]; then
		echo "kosong"
	else
		echo "ada isi"
	fi
}

FILE_KOSONG=()

for FILE in *.sh
do
	HASIL=$(cek_isi "$FILE")
	echo " $FILE : $HASIL "
	if [ "$HASIL" =  "kosong" ]; then
		FILE_KOSONG+=("$FILE")

	fi
done


echo "file yang kosong: ${FILE_KOSONG[@]}"
echo "jumlah file kosong: ${#FILE_KOSONG[@]}"
