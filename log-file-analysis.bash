#!/bin/bash

# Log File Analyzer

echo "Enter the log file to analyze:"
read log_file

# Prompt for keywords to search for
echo "Enter one or more keywords (separated by spaces):"
read -a keywords

# Initialize an associative array to store keyword counts
declare -A keyword_counts

# Read and analyze the log file
for keyword in "${keywords[@]}"; do
    count=$(grep -o -i "$keyword" "$log_file" | wc -l)
    keyword_counts["$keyword"]=$count
done

# Display keyword counts
for keyword in "${!keyword_counts[@]}"; do
    echo "Occurrences of '$keyword': ${keyword_counts[$keyword]}"
done
