#!/bin/bash
if [ $# -eq 0 ]
then
        echo "Usage: findEven num [num ...]"
        exit 1
fi
even=0
for arg
do
        num=$(( $arg % 2 ))
        if [ $num -eq 0 ]
        then
                let even=$even+1
        fi

done
echo -n "The number of even number is : "
echo $even
#Name : Khummeung Wattanasaroj ID : 62160244 Group : 4"