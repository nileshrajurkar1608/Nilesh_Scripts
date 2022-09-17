#!/bin/bash

echo -e "\e[44;32mI am installing frontend!\e[0m"

source components/common.sh

echo -e "\e[44;32m\nInstalling Nginx!\e[0m"

yum install nginx -y
systemctl enable nginx
systemctl start nginx

# Let's download the HTDOCS content and deploy it under the Nginx path.

echo -e "\e[44;32m\nLet's download the HTDOCS content and deploy it under the Nginx path.!\e[0m"

curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

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




