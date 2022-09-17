#!/bin/bash

echo -e "\e[44;32mI am installing frontend!\e[0m"

ID=$(id -u)
if [ "$ID" -ne 0 ]; then
    echo -e "\e[41;32mTry to run using sudo or root user!\e[0m"
    exit 1
fi

echo -e "\e[44;32mInstalling Nginx!\e[0m"

yum install nginx -y
systemctl enable nginx
systemctl start nginx

# Let's download the HTDOCS content and deploy it under the Nginx path.

# curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

# Deploy in Nginx Default Location:

# cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-main README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf

#Restart nginx services:

#systemctl start nginx




