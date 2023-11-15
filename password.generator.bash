#!/bin/bash

# Password Generator

echo "Enter the desired password length:"
read length

characters="abcdefghijklmnopqrstuvwxyz"

echo "Include Uppercase letters? (y/n):"
read include_upper

if [ "$include_upper" == "y" ]; then
    characters="$characters""ABCDEFGHIJKLMNOPQRSTUVWXYZ"
fi

echo "Include Numbers? (y/n):"
read include_numbers

if [ "$include_numbers" == "y" ]; then
    characters="$characters""0123456789"
fi

echo "Include Special Characters? (y/n):"
read include_special

if [ "$include_special" == "y" ]; then
    characters="$characters""!@#$%^&*"
fi

password=$(tr -dc "$characters" < /dev/urandom | head -c $length)
echo "Generated Password: $password"
