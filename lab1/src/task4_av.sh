#!/bin/bash
chmod +x number.txt
sed -i -e 's/\r$//' number.txt
if [ -x number.txt ]
then
    i=0
    while read line; do
        num[$i]="$line"
        i=$(($i+1))
    done < number.txt
    echo "Numer of arguments: $i"
    s=0
    for n in ${num[@]}
    do
        let s=s+n
    done
    let res=s/i
    echo "Averange =$res"
fi