#! /bin/bash
read -p "Enter three marks out of 100 each : " m1 m2 m3
s=$(($m1+$m2+$m3))
avg=$(echo  "scale=2;$s / 3"|bc)
echo -e "Average: $avg"
if [[ $(echo "if (${avg} >= 90) 1 else 0" | bc) -eq 1 ]]
then
echo "Grade: S"
elif [[ $(echo "if (${avg} < 90) 1 else 0" | bc) -eq 1 ]] &&
[[ $(echo "if (${avg} >= 80) 1 else 0" | bc) -eq 1 ]]
then
echo "Grade: A"
elif [[ $(echo "if (${avg} < 80) 1 else 0" | bc) -eq 1 ]] &&
[[ $(echo "if (${avg} >= 60) 1 else 0" | bc) -eq 1 ]]
then
echo "Grade: B"
elif [[ $(echo "if (${avg} < 60) 1 else 0" | bc) -eq 1 ]] &&
[[ $(echo "if (${avg} >= 40) 1 else 0" | bc) -eq 1 ]] 
then
echo "Grade: P"
else
echo "Grade: F"
fi
