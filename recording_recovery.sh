#!/bin/bash

echo -n -e "\e[32mEnter recording ID:\e[0m "
read ID

REC_ID=$ID

echo -n -e "\e[32mEnter TSM IP:\e[0m "
read TSM

TSM_IP=$TSM

echo -n -e "\e[32mEnter MCR URL:\e[0m "
read MCR

MCR_URL=$MCR

echo -e "\e[46;32m\nRaw data download URL: \e[0m/opt/ringcentral/rmp/tsm_get.js '${REC_ID}' -d ${REC_ID}_media --tsm-host $TSM_IP --tsm-port 8080 --mcr-pool ${MCR_URL}"

/opt/ringcentral/rmp/tsm_get.js '${REC_ID}' -d ${REC_ID}_media --tsm-host $TSM_IP --tsm-port 8080 --mcr-pool ${MCR_URL}



