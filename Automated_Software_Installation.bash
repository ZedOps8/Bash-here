#!/bin/bash

# Automated Software Installation

package_list="packages.txt"

if [ ! -e "$package_list" ]; then
    echo "Package list file not found."
    exit 1
fi

while read -r package; do
    echo "Installing $package..."
    sudo apt-get install -y "$package"  # For Debian/Ubuntu
    # or
    # sudo yum install -y "$package"  # For CentOS/RHEL
done < "$package_list"

echo "Software installation completed."
