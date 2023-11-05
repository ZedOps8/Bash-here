#This script acts as a basic calculator, allowing the user 
#to perform addition, subtraction, multiplication, and division operations. It takes two numbers and an operator as input and returns the result.

#!/bin/bash

# A  Bash Calculator

echo "Enter the first number:"
read num1

echo "Enter the operator (+, -, *, /):"
read operator

echo "Enter the second number:"
read num2

case $operator in
    +)
        result=$((num1 + num2))
        ;;
    -)
        result=$((num1 - num2))
        ;;
    *)
        echo "Invalid operator"
        exit 1
        ;;
esac

echo "Result: $result"
