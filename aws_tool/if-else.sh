#!/bin/bash

# if-else condition

read -p "What is your Name:" NAME

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
    echo -e "\e[46;32mYou are not a registered user![0m"
fi
