#!/bin/bash

#assinging valus satically

# 1. create and modify the files as u like in editor
#2. Post creation, come to bash and give <$git status> command to know the files which are untraced
echo "git status"
#3. now add the files in to git
echo "git add <filename>"  #for single file
echo "git add ."      #for multiple files
#4. now do commit
echo "git commit -m \"some message\"" 
#5. till here we have saved files in temp area now push those to git origin
echo "git push -u origin main"

#command for adding, commiting and pushing  is
echo "git add . ; git commit -m <msg in double quotes>; got push -u origin main"