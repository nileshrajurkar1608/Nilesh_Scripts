#!/bin/bash

ID=$(id -u)
if [ "$ID" != "0" ]; then
    echo -e "\e[41;32mPlease run command as a root user!\e[0m"
    exit 1
fi

echo -e "Installing httpd"
yum install httpd -y

