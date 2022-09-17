#!/bin/bash

# if-else condition

read -p "What is your Name:" NAME

if [ "$NAME" = "Nilesh" ]; then 
    echo -e "Welcome Nilesh!"
    exit 1
fi

if [ "$NAME" = "Manu" ]; then 
    echo -e "Welcome Manu!"
    exit 1
else 
    echo -e "You are not registered User!"
fi