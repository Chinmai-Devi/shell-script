#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "Please run the script with user access"
    exit 1
else 
    echo "Yay you are super user"

fi

dnf install mysqll -y