#!/bin/bash

MONITOR=1

echo "cek monitor"

while [ $MONITOR -le 5 ]
do
	echo "cek ke-$MONITOR"
	echo "DATE: $(date)"
	echo "Sisa RAM: $(free -h | grep Mem)"
	sleep 2
	MONITOR=$((MONITOR + 1))
done
echo "monitor selesai"
