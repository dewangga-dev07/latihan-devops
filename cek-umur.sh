#!/bin/bash

echo "Masukkan umur lo:"
read UMUR

if [ $UMUR -ge 18 ]; then
	echo "Lo udah dewasa, siap kerja jadi DevOps!"
else
	echo "Lo masih muda, tapi semangat belajarnya udah pro!"
fi
