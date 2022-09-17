#!/bin/bash

# ID=$(id -u)
# if [ "$ID" != "0" ]; then
#     echo -e "\e[41;32mPlease run command as a root user!\e[0m"
#     exit 1
# fi

# echo -e "\e[42;32mInstalling httpd\e[0m"
# yum install httpd -y

ID=$(id -u)

if [ $ID -eq 0 ]; then
    echo -e "\e[42;32mInstalling httpd\e[0m"
    yum install httpd -y
else
    echo -e "\e[41;32mtry running as sudo or root user\e[0m"
    exit 1
fi




