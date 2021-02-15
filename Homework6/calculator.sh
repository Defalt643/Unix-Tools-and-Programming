#!/bin/bash
menu=0
while [ $menu != 5 ]
do
echo "Select the operation"
echo "1: Add"
echo "2: Subtract"
echo "3: Multiply"
echo "4: Divide"
echo "5: Exit"
echo -n "Select the operation :"
read menu
case $menu in
        1)
                echo -n "Input the first operand:"
                read a
                echo -n "Input the second operand:"
                read b
                res=`echo $a + $b | bc`
                echo -n "Add result is: "
                echo $res
        ;;
        2)
                echo -n "Input the first operand: "
                read a
                echo -n "Input the second operand: "
                read b
                res=`echo $a - $b | bc`
                echo -n "Subtract result is: "
                echo $res
        ;;
        3)
                echo -n "Input the first operand: "
                read a
                echo -n "Input the second operand: "
                read b
                res=`echo $a \* $b | bc`
                echo -n "Multiply result is: "
                echo $res
        ;;
        4)
                echo -n "Input the first operand: "
                read a
                echo -n "Input the second operand: "
                read b
                res=`echo "scale=2; $a / $b" | bc`
                echo -n "Divide result is: "
                echo $res
        ;;
        5)echo "Bye Bye. Thanks for using me."
                exit 1
esac
done
#Name : Khummeung Wattanasaroj ID : 62160244 Group : 4"