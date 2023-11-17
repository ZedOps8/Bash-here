#!/bin/bash

# Automated Backup and Archiving

echo "Enter the source directory to back up:"
read source_dir

echo "Enter the destination directory for backups:"
read backup_dir

# Create a timestamp for the backup archive
timestamp=$(date +'%Y%m%d_%H%M%S')
backup_filename="backup_$timestamp.tar.gz"

# Create the archive
tar -czf "$backup_dir/$backup_filename" "$source_dir"

echo "Backup completed and saved as $backup_dir/$backup_filename"
