
#!/bin/bash

# Automated File Renaming

echo "Enter the directory containing files to rename:"
read directory

echo "Enter the naming pattern (e.g., 'image_'):"
read pattern

counter=1

for file in "$directory"/*; do
    extension="${file##*.}"
    new_name="$directory/$pattern$counter.$extension"
    mv "$file" "$new_name"
    ((counter++))
done

echo "File renaming completed."
