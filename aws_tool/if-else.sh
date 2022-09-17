#!/bin/bash

# if-else condition

# read -p "What is your Name:" NAME

# if [ "$NAME" = "Nilesh" ]; then 
#     echo -e "Welcome Nilesh!"
#     exit 1
# fi

# if [ "$NAME" = "Manu" ]; then 
#     echo -e "Welcome Manu!"
#     exit 1
# else 
#     echo -e "You are not a registered User!"
# fi

if [ "$NAME" = "Nilesh" ]; then
    echo -e "Nilesh, you are a student!"
    elif [ "$NAME" = "Manu" ]; then
    echo -e "Manu, You are a Teacher!"
    else 
    echo -e "\e[46;32mYou are not a registered user!\e[0m"
fi

# ACTION=$1

# expect input $1 while running script to make condition true  
# if [ -z "$ACTION" ]; then
#     echo -e "Only valid options are start or stop or restart"
# fi


# # doesn't expect input $1 while running script to make condition true 
# if [ -n "$ACTION" ]; then
#     echo -e "Does Not expect any input while running script"
# fi

