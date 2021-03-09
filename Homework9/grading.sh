#!/bin/bash
for i in {1..20}
do
        scores[$i]=$(( RANDOM % 100 ))
        let "x2 = x2 + (${scores[$i]} * ${scores[$i]})"
        let "x = x + ${scores[$i]}"
done
avg=`echo "scale=2; $x / 20" | bc`
let "before_square_root=((20 * $x2)-($x * $x))/(20 * (20 - 1))"
square_root=$(echo "scale=5;sqrt($before_square_root)" | bc -l)
echo -n "sum = $x, avg = $avg, sd = $square_root"
echo
avg_m_sd=`echo $avg - $square_root | bc`
avg_p_sd=`echo $avg + $square_root | bc`
avg_2sd=$(echo $avg 2 $square_root | awk '{printf "%4.3f\n",$1+$2*$3}')
for i in {1..20}
do
        if (( ${scores[$i]} > ${avg_m_sd%%.*} && ${scores[$i]} <= ${avg_p_sd%%.*} ))
        then
                echo "$i C"
        elif (( ${scores[$i]} > ${avg_p_sd%%.*} && ${scores[$i]} <= ${avg_2sd%%.*} ))
        then
                echo "$i B"
        elif (( ${scores[$i]} > ${avg_2sd%%.*} ))
        then
                echo "$i A"
        else
                echo "$i F"
        fi
done
#Made by Mr.Khummeung Wattanasaroj ID:62160244 Group:4
