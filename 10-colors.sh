#!/bin/bash

echo "All about colours"

#the syntac is \e[colorcodem    eg: \e[33m

n="\e[0m"

echo -e "This is \e[34m Blue color $n"

echo -e "This is \e[35m Purple $n"

echo -e "Mix of colors is \e[34mSblue \e[32m Green \e[35m Purple"