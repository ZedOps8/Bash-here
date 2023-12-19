#!/bin/bash

# Password Strength Checker

echo "Enter a password to check its strength:"
read -s password

length=${#password}
score=0

# Calculate password strength score
if [ $length -ge 8 ]; then
    score=$((score + 1))
fi

if [[ $password =~ [A-Z] ]]; then
    score=$((score + 1))
fi

if [[ $password =~ [a-z] ]]; then
    score=$((score + 1))
fi

if [[ $password =~ [0-9] ]]; then
    score=$((score + 1))
fi

if [[ $password =~ [\!@#\$%^&\*] ]]; then
    score=$((score + 1))
fi

echo "Password Strength Score: $score"

if [ $score -lt 3 ]; then
    echo "Recommendations for a stronger password:"
    echo "1. Use a mix of uppercase and lowercase letters."
    echo "2. Include numbers and special characters."
    echo "3. Aim for a password length of at least 8 characters."
fi
