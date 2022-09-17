#!/bin/bash

ID=$(id -u root)
if [ "$ID" != "0" ]; then
    echo -e "\e[46;31mLogin as a root user to run commands!\e[0m"
    exit 1
fi

echo -e "Installing httpd"
yum install httpd -y

