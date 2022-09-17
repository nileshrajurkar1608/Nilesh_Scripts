#!/bin/bash

ID=$(id -u)
if [ "$ID" != "0" ]; then
    echo -e "\e[46;31mPlease login as a root user to run commands!\e[0m"
    exit 1
fi

echo -e "Installing httpd"
yum install httpd -y

