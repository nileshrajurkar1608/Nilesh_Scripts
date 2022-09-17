#!/bin/bash

# if-else condition

Read -p "What is your Name:" NAME

if [ "$NAME" = "Nilesh" ]; then 
    echo -e "Welcome Nilesh!"
    exit 1
fi