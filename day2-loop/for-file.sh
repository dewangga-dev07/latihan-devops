#!/bin/bash

echo "=== cek semua file di folder ini ==="

for file in *.txt
do
	echo "Nama file: $file | Ukuran: $(du -sh $file | cut -f1)"
done

echo ""

echo "Total file .txt: $(ls *.txt |wc -l) file"
