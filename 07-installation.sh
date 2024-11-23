#!/bin/bash

userid=$(id -u)

if [$userid -ne 0]
then 
    echo "Please run the script with user access"
else 
    echo "Yay you are super user"

fi

dnf install mysql -y