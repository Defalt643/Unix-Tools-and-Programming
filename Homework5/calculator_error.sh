#!/bin/bash

#Take user input
echo "Please enter two number :"
read a
read b
#Input type of operation
echo "Enter choice :"
echo "1.Addition"
echo "2.Subtraction:"
echo "3.Multiplication"
echo "4.Division"
read ch
if [$ch == 1]
then
        echo "$a + $b = " $a+$b
elif [$ch ==2]
then
        echo "$a - $b = " $a-$b
elif [$ch == 3]
then
        echo "$a * $b = " $a\*$b
elif [$ch == 4]
then
        echo "$a / $b = " $a/$b
else
        echo "Your choice are not match, please try again."
fi