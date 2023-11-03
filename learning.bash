# 1. List Files
ls

# 2. Print Working Directory
pwd

# 3. Change Directory
cd /path/to/directory

# 4. Create Empty File
touch myfile.txt

# 5. Create Directory
mkdir myfolder

# 6. Remove Files or Directories
rm myfile.txt
rm -r myfolder

# 7. Output Text
echo "Hello, World!"

# 8. View File Content
cat myfile.txt

# 9. Search Text
grep "keyword" myfile.txt

# 10. Change File Permissions
chmod +x script.sh

# 11. Move or Rename Files
mv file1.txt directory/
mv oldname.txt newname.txt

# 12. Copy Files
cp file.txt newfile.txt

# 13. If Statement
if [ condition ]; then
    # commands to execute if condition is true
fi

# 14. For Loop
for item in item1 item2 item3; do
    # commands to execute for each item
done

# 15. While Loop
while [ condition ]; do
    # commands to execute while condition is true
done

# 16. Variables
my_variable="Hello, World"
echo $my_variable

# 17. Command Substitution
current_date=$(date)
echo "Today is $current_date"

# 18. Functions
my_function() {
    # commands in the function
}
my_function

# 19. Command-Line Arguments
# script.sh
# echo "Argument 1: $1"
# echo "Argument 2: $2"

# Execute with: ./script.sh arg1 arg2

# 20. Case Statement
case $variable in
    option1)
        # commands for option1
        ;;
    option2)
        # commands for option2
        ;;
    *)
        # commands for other cases
        ;;
esac

# 21. Pipes and Redirection
# command1 | command2
# command > output.txt

# 22. Environment Variables
echo $HOME
echo $PATH

# 23. If-Elif-Else Statement
if [ condition1 ]; then
    # commands for condition1
elif [ condition2 ]; then
    # commands for condition2
else
    # commands for other cases
fi

# 24. Read - User Input
# echo "Enter your name: "
# read name
# echo "Hello, $name"

# 25. Arrays
# my_array=("apple" "banana" "cherry")
# echo "First element: ${my_array[0]}"

# 26. Select - Create Menus
# options=("Option 1" "Option 2" "Quit")
# select choice in "${options[@]}"; do
#     case $choice in
#         "Option 1")
#             echo "You selected Option 1"
#             ;;
#         "Option 2")
#             echo "You selected Option 2"
#             ;;
#         "Quit")
#             break
#             ;;
#         *)
#             echo "Invalid choice"
#             ;;
#     esac
# done

# 27. File and Directory Checks
if [ -f myfile.txt ]; then
    echo "myfile.txt exists."
fi

# 28. Arithmetic Operations
a=5
b=3
sum=$((a + b))
echo "The sum is $sum"

# 29. Command-Line Options
# while getopts "a:b:" opt; do
#     case $opt in
#         a)
#             a_option="$OPTARG"
#             ;;
#         b)
#             b_option="$OPTARG"
#             ;;
#     esac
# done

# 30. Error Handling
# if [ $? -ne 0 ]; then
#     echo "An error occurred."
# fi

# 31. Here Documents
# cat <<EOF
# This is a multi-line text.
# It can contain variables like $variable.
# EOF

# 32. Advanced Text Processing
# Bash provides tools like sed, awk, and regular expressions for text processing.
