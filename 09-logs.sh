#!/bin/bash

userid=$(id -u) # means here we are giving a command's o/p to a variable dynamically

timestamp=$(date +%F-%H-%M-%S)
scriptname=$(echo $0 | cut -d "." -f1)

logfile=/tmp/$scriptname-$timestamp.log


validate(){
    if [ $1 -eq 0 ]
    then 
        echo "$2 Success"
    else 
        echo "$2 Falure"
    fi
}

if [ $userid -eq 0 ]
then 
    echo "Yay! you have super user access so proceeding with installations"
else
    echo "Please run with super access"
    exit 1
fi



dnf install mysql -y &>>$logfile

validate $? "MySQL Installation"

dnf install git -y &>>$logfile
 
validate $? "git installation"
