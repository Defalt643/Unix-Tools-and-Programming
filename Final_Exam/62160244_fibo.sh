#!/bin/bash
fib () {
     i=$1
     if (( i <= 1 )); then
         echo "1"
     else
             x=$(fib $((i-1)))
             y=$(fib $((i-2)))
             let "total=$x+$y"
             echo $total
     fi
}
echo $(fib $1)
#Name: Khummeung Wattanasaroj ID:62160244 Group:4
