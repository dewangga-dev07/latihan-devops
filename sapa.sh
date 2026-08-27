#!/bin/bash

NAMA=$1

read UMUR

if [ -z "$1" ]; then
	read NAMA
fi
echo "Halo $NAMA, umur lo $UMUR tahun!"
