#!/bin/bash


echo -e "\e[46;32m\nBelow input create commands to change ownership of mp4 file and command to download mp4 on local PC.:\e[0m"
echo -n -e "\n\e[32mEnter your prod server username Ex. nilesh.rajurkar: \e[0m"
read username
USER_NAME=$username

echo -e "\e[32m\nRun below command to change ownership of recovered mp4 file:\e[0m\n"

echo -e "chown ${USER_NAME}:unixusers ${REC_ID}_media.mp4"

echo -e "\e[32m\nRun below command on local PC to download recovered mp4 from server:\e[0m\n"

echo -e "\e[32m\nscp ${USER_NAME}@10.9.130.81:/mnt/data/${REC_ID}_media.mp4 .\e[0m\n"