#!/bin/bash

# validating whether the executing user is root or not
ID=$(id -u)
if [ $ID -ne 0 ]; then 
    echo -e "\e[41;32m Try executing the script with sudo permissions by entering 'sudo -i' and a password.\e[0m"
    exit 1
fi 

echo -n -e "\e[32mEnter recording ID:\e[0m "
read R_ID

REC_ID=$R_ID

echo -n -e "\e[32mEnter TSM IP:\e[0m "
read TSM

TSM_IP=$TSM

echo -n -e "\e[32mEnter MCR URL or IP Address\e[0m (\e[31mwithout http:// and 80\e[0m): "
read MCR

MCR_URL=$MCR

echo -e "\e[46;32m\nJust for Info: Raw data download URL will run automatically:\e[0m/opt/ringcentral/rmp/tsm_get.js '${REC_ID}' -d ${REC_ID}_media --tsm-host $TSM_IP --tsm-port 8080 --mcr-pool http://${MCR_URL}:80\e[0m\n"

/opt/ringcentral/rmp/tsm_get.js ${REC_ID} -d ${REC_ID}_media --tsm-host $TSM_IP --tsm-port 8080 --mcr-pool http://${MCR_URL}:80

echo -n -e "\n\e[32mNumber of downloaded files are: \e[0m"; ls -lrth -R ${REC_ID}_media | wc -l

echo -e "\e[45m\nCopy below command and Run manually to 'Transcode raw data' (if download of raw data files succeeded).\e[0m\n"

echo -e "nohup /opt/ringcentral/rmp/bin/tcr -o /mnt/data/${REC_ID}_media.mp4 \"/mnt/data/${REC_ID}_media/${REC_ID}/\" &\n"



