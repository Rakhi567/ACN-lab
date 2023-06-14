#! /bin/bash
read -p "Enter a number: " num
echo "Multiplication table of $num : "
for (( i=1; i<=10; i++))
do
val=$(( num * i ))
echo "$i * $num = $val"
done
