#!/bin/bash
# Author: Sameer Khan
if [ -z "$1" ]; then echo "Usage: ./backup.sh <folder>"; exit 1; fi
if [ ! -d "$1" ]; then echo "Error: folder $1 does not exist"; exit 1; fi
DEST=~/DeveloperPortfolio_Backups
mkdir -p "$DEST"
TS=$(date +%Y-%m-%d_%H-%M-%S)
FILE="$DEST/backup_$TS.tar.gz"
if tar -czf "$FILE" -C "$(dirname "$1")" "$(basename "$1")"; then
  echo "Backup successful: $(basename "$FILE") ($(du -h "$FILE" | cut -f1))"
  echo "$TS - SUCCESS - $(basename "$FILE")" >> "$DEST/backup.log"
else
  echo "Backup failed"
  echo "$TS - FAILED" >> "$DEST/backup.log"
  exit 1
fi
