#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
scriptname=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$scriptname-$timestamp.log
N="\e[0m"

validate(){
    if [ $1 -eq 0 ]
    then 
        echo -e "\e[32m Success $N"
    else
        echo -e "\e[31m Failure $N"
        exit 1
    fi
}

if [ $userid -eq 0 ]
then 
    echo "You have super user access so proceeding further"
else
    echo "OH oh!! you are not super user, please get super user access"
    exit 1
fi

for i in $@
do 
    echo "All packages are $@"
    echo "Package to install is :$i"
    dnf list installed $i &>>logfile
    if [ $? -eq 0 ]
    then 
        echo -e "$i Already installed so \e[33m Skipping it $N"
    else
        dnf install $i &>>logfile
        validate $? "Installation of $i"
    fi
done