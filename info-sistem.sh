#!/bin/bash

echo "===== INFO SISTEM ====="

echo "Hostname: $(hostname)"
echo "Tanggal dan Jam: $(date)"
echo "User login: $(whoami)"
echo "Sisa storage disk: $(df -h)"
echo "Sisa RAM: $(free -h)"
echo "===== SELESAI ====="
