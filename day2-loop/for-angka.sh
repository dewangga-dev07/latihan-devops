#!/bin/bash

echo "=== Loop  Angka ==="
for i in {1..5}
do
	echo "Iterasi ke-$i"
done

echo ""
echo "=== Bikin 5 file sekaligus ==="
for i in {1..5}
do
	touch file-$i.txt
	echo "File-$i.txt berhasil dibuat"
done
echo ""
echo "cek hasilnya:"
ls *.txt
