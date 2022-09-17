#!/bin/bash

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


d=150
echo -e "value of d is:$d:"

DATE_COMMAND=$(date +%F)

echo -e "Good Morning! Today's date is $DATE_COMMAND"

echo -e "\e[46;31mGood Morning! Today's date is $DATE_COMMAND\e[0m"

echo -e "Name of script you are running is $0"

echo -e "value of c is '$1'"


