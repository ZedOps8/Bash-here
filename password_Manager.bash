#!/bin/bash

# Simple Password Manager

password_file="passwords.txt"

echo "Password Manager"
echo "1. Add Password"
echo "2. Retrieve Password"
echo "3. Delete Password"
echo "4. Quit"

read choice

case $choice in
    1)
        echo "Enter account name:"
        read account
        echo "Enter password:"
        read password
        echo "$account: $password" >> "$password_file"
        echo "Password added for $account."
        ;;
    2)
        echo "Enter account name to retrieve password:"
        read account
        password=$(grep -i "^$account:" "$password_file" | cut -d ' ' -f2)
        echo "Password for $account: $password"
        ;;
    3)
        echo "Enter account name to delete password:"
        read account
        sed -i "/^$account:/d" "$password_file"
        echo "Password for $account deleted."
        ;;
    4)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid choice. Please select a valid option."
        ;;
esac
