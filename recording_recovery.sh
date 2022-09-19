#!/bin/bash

echo -n -e "Enter recording ID:"
read ID

REC_ID=$ID

echo -n -e "Enter TSM IP:"
read TSM

TSM_IP=$TSM

echo -n -e "Enter MCR URL:"
read MCR

MCR_URL=$MCR

echo -e "/opt/ringcentral/rmp/tsm_get.js '${REC_ID}' -d ${REC_ID}_media --tsm-host $TSM_IP --tsm-port 8080 --mcr-pool ${MCR_URL}"

#echo -e "$DOWNLOAD_URL"

#/opt/ringcentral/rmp/tsm_get.js '$REC_ID' -d $REC_ID_media --tsm-host $TSM_IP --tsm-port 8080 --mcr-pool $MCR_URL



