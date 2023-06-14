#! /bin/bash
read -p "Enter the Indian state: " state
state=$(echo $state | tr '[:upper:]' '[:lower:]' )
case $state in
"andhra pradesh")
echo "Language: Telugu";;
"assam")
echo "Language: Assamese";;
"bihar"|"himachal pradesh")
echo "Language: Hindi";;
"karnataka")
echo "Language: Kannada";;
"kerala"|"lakshadweep")
echo "Language: Malayalam";;
"tamil nadu")
echo "Language: Tamil";;
*)
echo "Language: Unknown";;
esac
