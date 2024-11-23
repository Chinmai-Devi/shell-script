#!/bin/bash

echo "@ :is used for all the variables -> $@ "
echo "# :is used to show no. of variables -> $#"
echo "0 :is used to print script name -> $0"
echo "PWD :is used to print current working directory (pwd should be in caps) -> $PWD"
echo "HOME :is used to show home directory -> $HOME"
echo "HOSTNAME :print the hostname -> $HOSTNAME"
echo "$ : prints the process id of current shell script -> $$"

#to make any process as background use '&'

sleep 10 &

echo "! :print the process id of last backround command -> $!"
