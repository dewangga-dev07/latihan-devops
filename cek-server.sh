#!/bin/bash

cek_cpu() {
	echo "Mengecek penggunnaan CPU..."
	echo "$(top -bn1 | grep "Cpu(s)")"
}

cek_disk() {
	echo "mengecek sisa storage..."
	echo "$(df -h /)"
}

cek_cpu
cek_disk

