#!/bin/bash

FOLDER=$1

if [ -z "$1" ]; then
	echo "Error: nama folder wajib diisi!"
else
	mkdir -p "project-$FOLDER/src/data/logs"
	echo "Folder project-$FOLDER berhasil dibuat"
fi
