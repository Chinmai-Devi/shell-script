#!/bin/bash

userid=$(id -u)

if [ $userid -eq 0]
then 
    echo "You have super user access so proceeding further"
else
    echo "OH oh!! you are not super user, please get super user access"
    exit 1
fi