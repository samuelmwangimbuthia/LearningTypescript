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


