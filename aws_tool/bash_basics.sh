#!/bin/bash

<<COMMENT
echo -e "This is my first bash command"

echo "Hi" ; echo hay  

echo -e "line1\nline2"

echo -e "\e[46;31m This is colored Line \e[0m"

a=10
b=abc

echo $a
echo $b

echo ${a}

echo "${b}"
COMMENT

d=150
echo -e "value of d is:$d:"

DATE_COMMAND=$(date +%F)

echo -e "Good Morning! Today's date is $DATE_COMMAND"

echo -e "\e[46;31mGood Morning! Today's date is $DATE_COMMAND\e[0m"

echo -e "Name of script you are running is $0"

# c=$2
# echo -e "value of c is '$2'"

# command: sh bash_basics.sh Nilesh Kiran
# here $1=Nilesh and $2=Kiran

# Output:
# Name of script you are running is bash_basics.sh
# value of c is 'Kiran'

echo -e "Print supplied variables are: $*"
echo -e "Print supplied variables are: $@"
echo -e "Print NUMBER of supplied variables are: $#"
echo -e "Print Process ID of script you are running is $$"

read -p "Enter your name:" NAME
echo -e "\nYour name is '$NAME'"

# # Function:
# UPTIME_COMMAND () {
#     echo -e "This is first function!"
#     echo -e "Printing uptime"
#     uptime
# }

# UPTIME_COMMAND

sh function.sh