#!/bin/bash

echo "=== belajar WHILE LOOP ==="

angka=1

while [ $angka -le 5 ]
do
	echo "Angka sekarang: $angka"
	angka=$((angka+1))
done

echo "=== LOOP SELESAI ==="
