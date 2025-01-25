#!/bin/bash
echo "Hello, World!"
# This Sscript displays the date and time
# A script is a series of commands executed sequentially
: << 'COMMENT'
This is a multiline comment
you can add multiple lines here
COMMENT
echo "The current date and time is:"
date 
# why shebang(#!/bin/bash) - this line tells the system to use Bash to run the script,
# ensuring compatibility across linux environments
# Working with Variables and Arrays
# Variables and arrays allow dara storage and manipulation in scripts, making automation more flexible.
NAME="Linux"
echo "Welcome to $NAME Scripting" # use $sign to access the variables value.
# Constants: make variables readonly with readonly.
readonly VERSION="1.0"
myArray=(1 2 3 "Hello" "world")
echo "${myArray[1]}"
#get the length of an array
echo "${#myArray[@]}"

#Get specific values from an array
echo "${myArray[*]:2}"

# fetch two elements starting from index 2
echo "${myArray[*]:2:2}"

#update an array
myArray+=(5 6 8)
echo "${myArray[*]:1}"

# Associative Array-uses key value pairs to store data, rather than just numbered indices
declare -A myAssociativeArray
myAssociativeArray=( [name]=Paul [age]=20 )

# access values
echo "${myAssociativeArray[name]}"

#String and Arithmetic Operation
# String manipulation examples
str="shell scripting techniqeus"
# Length
echo ${#str}

# Replace
echo ${str/scripting/programming}

#Extract substring:
echo ${str:6:9}

# uppercase
echo ${str^^}

echo ${str}
#user interfaces: Taking input from the user in shell scripting
#basic Input
read -p "Your name: " var_name
echo "You entered $var_name"

#Arithmetic Operations
#Usint the let command
let a=5*10
echo $a

#using (()) for arithmetic operations
((a++))
echo $a
# Conditional Statements in shell scripting
# if statements:
let b=51
if [ $a -gt $b ]; then
	echo "a is greater than b"
elif [ $a -eq $b ]; then # always put spaces around operators and operands in conditions
	echo "a equals b"
else
	echo "a is less than b"
fi

#Case Statement
case $a in
	a) echo "a is 1" ;; 
	b) echo "a is 2" ;;
	*) echo "a is neither 1 nor 2" ;;
esac
<<COMMENT
Loops are powerful tools for automating repetitive tasks.you can use them for various
purposes like 
- iterating over files, arrays or ranges
- you can rename all files in a directory using a loop
COMMENT
# for loop
for i in {1..3}; do
	echo "Number: $i"
done

# while loop
count=1
while [ $count -le 3 ]; do
	echo "count is $count"
	((count++))
done

# until loop- continues to execute until the condition becomes true
count2 = 1
until [ $count2 -gt 3 ]; do
	echo "Count2 is: $count2"
	((count2++))
done

# infinite loop
# continues running indefinitely until its manually stopped
#for (( ; ; )); do
#	echo "This is infinite loop"
#done

#Select Loop
#creates a simple menu system which allows users to select an option from a list.its useful when you need a user driven selection process.
# the select loop displays options and each selection runs the corresponding case statement.
PS3="Choose a fruit: "
select option in Apple Banana Orange Mango Exit; do
	case $option in
		Apple) 
			echo "You chose Apple";;
		Banana)
			echo "You chose Banana";;
		Orange)
			echo "You chose Orange";;
		Exit) break;; *) 
			echo "Invalid option";;

	esac
done	


#Functions
#Useful for encapsulating a reusable block of code
greet_user() {
	echo "hello, $1!"
}

greet_user "Samuel"
