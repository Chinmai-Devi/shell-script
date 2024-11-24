#!/bin/bash

userid=$(id -u)

validate(){
    if [ $1 -eq 0 ]
    then 
        echo "Success"
    else 
        echo "Falure"
    fi
}

if [ $userid -eq 0 ]
then 
    echo "Yay! you have super user access so proceeding with installations"
else
    echo "Please run with super access"
fi



dnf install mysql -y

validate $? "MySQL Installation"

dnf install git -y 
 
validate $? "git installation"
