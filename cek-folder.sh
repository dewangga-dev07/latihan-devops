#!/bin/bash

if [ -z "$1" ]; then
	read FOLDER
else
	FOLDER=$1
fi

if [ -d "$FOLDER" ]; then
	echo " folder $FOLDER sudah ada, gaperlu dibuat lagi!"
else
	mkdir -p "$FOLDER"/{data,logs}
	echo "folder $FOLDER berhasil dibuat, beserta folder data dan logsnya"
fi

ls "$FOLDER"

