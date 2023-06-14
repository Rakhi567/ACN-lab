#! /bin/bash
result=$(grep stud* /etc/passwd)
result=$(echo "${result}"| cut -d: -f 1)
echo $result
for f in $result
do
p="${f}123"
sudo usermod -p $(echo $p | openssl passwd -1 -stdin) $f
sudo usermod -m -d /usr $f
done
