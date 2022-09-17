#!/bin/bash

ID=$(id -u)
if [ "$ID" -ne 0 ]; then
    echo -e "\e[41;32mTry to run using sudo or root user!\e[0m"
    exit 1
fi

status() {
    if [ $1 -eq 0 ]; then 
        echo -e "\e[32mSuccess!\e[0m"
    else
        echo -e "\e[31mFailure! Look for logs.\e[0m"
    fi
}

