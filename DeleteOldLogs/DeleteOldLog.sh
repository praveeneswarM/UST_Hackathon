#!/bin/bash
BackUp="backup"
mkdir -p $BackUp
cd $BackUp || echo "Failed to move to that directory"
Date=$(date +%Y-%m-%d)
tar -czf "backup_$Date.tar.gz" . 
find "$BackUp" -name "*.tar.gz" -mtime +7 -delete
echo "Created Backup!"