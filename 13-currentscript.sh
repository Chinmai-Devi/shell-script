#!/bin/bash


greeting="Hi Hello, I am Chinmai" 
echo "You are seeing the message before calling of other script: $greeting"
echo "process id of current script: $$"

#./14-otherscript.sh  1st way
source ./14-otherscript.sh

echo "You are seeing the message after calling of other script: $greeting"

