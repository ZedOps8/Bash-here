 
#!/bin/bash

# Directory Synchronization

echo "Enter the source directory:"
read source_dir

echo "Enter the destination directory:"
read dest_dir

rsync -av --delete "$source_dir/" "$dest_dir"
echo "Synchronization completed."
