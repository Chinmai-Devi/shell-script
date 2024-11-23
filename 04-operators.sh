#!/bin/bash

a=$1
b=$2


#here $ is most imp, if we gice $ then only shell is considering that is a value
sum=$(($a+$b))
sub=$(($a-$b))
mukl=$(($a*$b))
div=$(($a/$b))

echo "sum is : $sum"
echo "sum is : $sub"
echo "sum is : $mul"
echo "sum is : $div"