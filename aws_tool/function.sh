#!/bin/bash

# Function:
UPTIME_COMMAND () {
    echo -e "\nThis is first function!"
    echo -e "\e[46;32mPrinting uptime of Machine:\e[0m\n"
    uptime
}

LOAD_AVERAGE() {
    echo -e -n "\n\e[46;32mLoad Average of Machine is:\e[0m"
    uptime| awk -F : '{print $NF}' 
}

UPTIME_COMMAND

LOAD_AVERAGE
sleep 5
LOAD_AVERAGE
sleep 5
LOAD_AVERAGE