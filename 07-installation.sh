#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "Please run the script with user access"
    exit 1  #most imp - $? shows exit status - if true then it shows 0 otherswise 1-127
else 
    echo "Yay you are super user"

fi

dnf install mysqll -y

dnf install git -y

if [ $? -ne 0]
then 
    echo "git failed"
    exit 1

else 
    echo "git success"

fi