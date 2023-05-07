#!/bin/bash

#####################
# Author: Nawaz
# Date: 05/05/2023
#
# This script outputs the node health
#
# Version: v1
#####################

set -x # debug mode
set -e # exit the script when there is an error
set -o # pipefail

# echo "used for printing the disc space"
df -h

# echo "for printing the memory"
free -g

# echo "for printing the resources"
nproc

ps -ef | grep nawaz | awk -F" " '{print $1}'