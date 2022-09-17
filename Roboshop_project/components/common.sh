#!/bin/bash

ID=$(id -u)
if [ "$ID" -ne 0 ]; then
    echo -e "\e[41;32mTry to run using sudo or root user!\e[0m"
    exit 1
fi

