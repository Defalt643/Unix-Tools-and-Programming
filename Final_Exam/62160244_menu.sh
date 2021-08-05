
#!/bin/bash
menu=0
while [ $menu != 4 ]
do
echo "Selct the operation"
echo "1:Add"
echo "2:Multiply"
echo "3:Average"
echo "4.Exit"
read menu
case $menu in
    1)
        count=0
        total=0
        echo -n "Add result is:"
        for arg
        do
        if (( $count == 0 ))
        then
            echo -n "$arg"
        else
            echo -n "+$arg"
        fi
        let "count=$count+1"
        let "total=$total+$arg"
        done
        echo -n "=$total"
        echo
esac
done
