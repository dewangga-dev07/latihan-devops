#!/bin/bash

SOURCE_DIR="/home/dewangga/latihan-devops/data-penting"
BACKUP_DIR="/home/dewangga/latihan-devops/folder-backup"
TANGGAL=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="backup-$TANGGAL.tar.gz"
LOG_FILE="$BACKUP_DIR/backup.log"

buat_backup() {
	echo "Memulai backup...."
	tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

	if [ $? -eq 0 ]; then
		echo "Backup berhasil: $BACKUP_FILE"
		echo "$(date): Backup berhasil - $BACKUP_FILE" >> "$LOG_FILE"
	else
		echo "Backup gagal!"
		echo "$(date): Backup gagal" >> "$LOG_FILE"
	fi
}

bersihkan_backup_lama() {
	echo "mengecek backup lama..."
	JUMLAH_BACKUP=$(ls "$BACKUP_DIR"/*.tar.gz 2>/dev/null | wc -l)

	if [ "$JUMLAH_BACKUP" -gt 3 ]; then
		echo "Ada $JUMLAH_BACKUP backup, menghapus yang paling lama...."
		ls -t "$BACKUP_DIR"/*.tar.gz | tail -n  +4 | xargs rm -rf
		echo "Backup lama sudah dihapus"

	else
		echo "Jumlah backup masih aman ($JUMLAH_BACKUP file)"
	fi
}

echo "BACKUP OTOMATIS"
buat_backup
bersihkan_backup_lama
echo "SELESAI"


