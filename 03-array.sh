#!/bin/bash

#declaring directly 

fam=("dad" "mom")

echo "${fam[0]}"

#Arguments

family=($1 $2 $3)

echo "${family[1]}"

#if we want all use '@'

echo "${fam[@]}"