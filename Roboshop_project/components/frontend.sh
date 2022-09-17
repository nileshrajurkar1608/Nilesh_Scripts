#!/bin/bash

set -e      # To make sure script stops when any of instruction/command fails.

echo -e "\e[44;32mI am installing frontend:\e[0m"

source components/common.sh

echo -e "\e[44;32m\n Installing Nginx:\e[0m"
yum install nginx -y  &>>/tmp/frontend.log
systemctl enable nginx

echo -e "\e[44;32m\n Starting Nginx:\e[0m"
systemctl start nginx 

echo -e "\e[44;32m\nLet's download the HTDOCS content and deploy it under the Nginx path:\e[0m"

curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"


echo -e "\e[44;32m\n Deploy in Nginx Default Location:\e[0m"
cd /usr/share/nginx/html
rm -rf *
unzip /tmp/frontend.zip  &>>/tmp/frontend.log

mv frontend-main/* .
mv static/* .
rm -rf frontend-main README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf

echo -e "\e[44;32m\n Restart nginx services:\e[0m"
systemctl restart nginx




