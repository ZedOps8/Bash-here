#!/bin/bash

# Simple File Backup Script

echo "Enter the source directory to backup:"
read source_dir

echo "Enter the destination directory for the backup:"
read dest_dir

backup_filename="backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

tar -czvf "$dest_dir/$backup_filename" "$source_dir"
echo "Backup completed and saved as $dest_dir/$backup_filename"
