#!/bin/bash

COUNTER=1

echo "WHILE LOOP"

while [ $COUNTER -le 10 ]
do
	echo "counter sekarang: $COUNTER"
	COUNTER=$((COUNTER + 2))
done

echo "selesai"
