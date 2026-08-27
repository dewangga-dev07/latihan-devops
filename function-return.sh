#!/bin/bash

cek_ganjil_genap() {
	ANGKA=$1
	if [ $((ANGKA % 2)) -eq 0 ]; then
		echo "genap"
	else
		echo "ganjil"
	fi
}

HASIL=$(cek_ganjil_genap 7)
echo "angka 7 adalah: $HASIL"
HASIL2=$(cek_ganjil_genap 2)
echo "angka 2 adalah: $HASIL2"

