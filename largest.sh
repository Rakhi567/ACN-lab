echo "enter the first number"
read a
echo "enter the second number"
read b
echo "enter the third number"
read c
if [[ $a > $b && $a > $c ]]
then
echo $a"is largest"
elif [[ $b > $a && $b > $c ]]
then
echo $b"is largest"
else
echo $c"is largest"
fi

