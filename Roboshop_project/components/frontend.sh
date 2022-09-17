#!/bin/bash

set -e      # To make sure script stops when any of instruction/command fails.

echo -e "\e[44;35m I am installing frontend\e[0m:"

source components/common.sh

echo -n -e "\e[35m\n Installing Nginx:\e[0m"
yum install nginx -y  >>/tmp/frontend.log
status $?

systemctl enable nginx

echo -n -e "\e[35m\n Starting Nginx:\e[0m"
systemctl start nginx 
status $?

echo -n -e "\e[35m\n Let's download the HTDOCS content and deploy it under the Nginx path:\e[0m"

curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"
status $?

echo -n -e "\e[35m\n Deploy in Nginx Default Location:\e[0m"
cd /usr/share/nginx/html
rm -rf *
unzip -o /tmp/frontend.zip  &>>/tmp/frontend.log

mv frontend-main/* .
mv static/* .
rm -rf frontend-main README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
status $?

echo -n -e "\e[35m\n Restart nginx services:\e[0m"
systemctl restart nginx
status $?




