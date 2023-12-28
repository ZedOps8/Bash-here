#!/bin/bash

# Password Generator with Complexity Control

echo "Enter the desired password length:"
read length

echo "Enter the number of uppercase letters to include:"
read upper_count

echo "Enter the number of lowercase letters to include:"
read lower_count

echo "Enter the number of digits to include:"
read digit_count

echo "Enter the number of special characters to include:"
read special_count

characters=""

for ((i=0; i<upper_count; i++)); do
    characters="$characters""$(echo {A..Z} | tr -d ' ')"
done

for ((i=0; i<lower_count; i++)); do
    characters="$characters""$(echo {a..z} | tr -d ' ')"
done

for ((i=0; i<digit_count; i++)); do
    characters="$characters""$(echo {0..9} | tr -d ' ')"
done

for ((i=0; i<special_count; i++)); do
    characters="$characters""!@#$%^&*"
done

password=$(tr -dc "$characters" < /dev/urandom | head -c $length)
echo "Generated Password: $password"
