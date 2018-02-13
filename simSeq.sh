#!/bin/bash

mkdir Zero-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 0 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > Zero-raw/zero$value

done
echo All done

sleep 5

mkdir One-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 0.1 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > One-raw/one$value

done
echo All done
sleep 5
mkdir Two-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 0.2 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > Two-raw/two$value

done
echo All done
sleep 5
mkdir Three-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 0.3 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > Three-raw/three$value

done
echo All done
sleep 5
mkdir Four-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 0.4 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > Four-raw/four$value

done
echo All done
sleep 5
mkdir Five-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 0.5 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > Five-raw/five$value

done
echo All done
sleep 5
mkdir Six-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 0.6 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > Six-raw/six$value

done
echo All done
sleep 5
mkdir Seven-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 0.7 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > Seven-raw/seven$value

done
echo All done
sleep 5
mkdir Eight-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 0.8 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > Eight-raw/eight$value

done
echo All done
sleep 5
mkdir Nine-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 0.9 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > Nine-raw/nine$value

done
echo All done
sleep 5
mkdir Ten-raw
for value in {1..100}
do
echo $value


./ms 32 1 -I 4 8 8 8 8 -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es 0.1 2 1 -ej 0.1 5 3 -r 50 5000 -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l 5000 -s 0.01 -p $partitions <treefile > Ten-raw/ten$value

done
echo All done
