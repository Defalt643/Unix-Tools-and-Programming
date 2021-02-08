#!/bin/bash
if [ $# -le 2 ];
then echo -n "You need more "
     echo -n "$(echo 3 - $# | bc) "
     echo "argument(s)"
elif [ $# -eq 3 ];
then
        if [ $1 = add ]
        then
                echo $2 + $3 | bc
        elif [ $1 = sub ]
        then
                echo $2 - $3 | bc
        elif [ $1 = mul ]
        then
                echo $2 \* $3 | bc
        elif [ $1 = div ]
        then
                printf '%.1f\n' $(echo "$2/$3" | bc -l )
        fi
fi
#Name : Khummeung Wattanasaroj ID : 62160244 Group : 4