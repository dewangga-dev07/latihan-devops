#!/bin/bash

hitung_baris() {
	BARIS=$1
	JUMLAH=$( wc -l < "$BARIS" )
	if [ $JUMLAH -gt 10 ]; then
		echo "panjang"
	else
		echo "pendek"
	fi
}
TOTAL=0
for BARIS in *.sh
do
	HASIL=$( hitung_baris "$BARIS" )
	echo "$BARIS : $HASIL "
	TOTAL=$(($TOTAL + 1))
done

echo "total file yang di proses : $TOTAL" 

