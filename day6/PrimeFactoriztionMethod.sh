#!/bin/bash -x

echo "Enter Number To Find Prime Factors: "
read number
while [ $((number % 2)) -eq 0 ]
do
      echo 2
      number=$(($number / 2))
done

for ((count=3; ((count * count))<=$number; count=$(($count+2))))
do
      while [ $((number % count )) -eq 0 ]
do
      echo $count
      number=$((number / count ))
done
done

if [ $number -gt 2 ]
then
      echo $number
fi
