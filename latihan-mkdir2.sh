#!/bin/bash

NAMA=$1

if [ -z "$1" ]; then
	echo "Error: nama folder wajib diisi!"
else
	mkdir -p "project-$NAMA/src/data/logs"
	echo "Folder project-$NAMA berhasil dibuat!"
fi
