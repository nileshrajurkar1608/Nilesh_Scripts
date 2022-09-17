#!/bin/bash

# Function:
UPTIME_COMMAND () {
    echo -e "\nThis is first function!"
    echo -e "Printing uptime of Machine:\n"
    uptime
}

LOAD_AVERAGE() {
    echo -e "\nLoad Average of Machine is:"
    uptime| awk -F : '{print $NF}' 
}

UPTIME_COMMAND

LOAD_AVERAGE