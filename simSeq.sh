#!/bin/bash

LENGTH=5000
RECOMB=50
SC=0.01
TG=0.1
#TG=0.1
PS=8
PSSUM=32 


mkdir Zero-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 0 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > Zero-raw/zero$value

done
echo All done

sleep 5

mkdir One-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 0.1 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > One-raw/one$value

done
echo All done
sleep 5
mkdir Two-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 0.2 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > Two-raw/two$value

done
echo All done
sleep 5
mkdir Three-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 0.3 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > Three-raw/three$value

done
echo All done
sleep 5
mkdir Four-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 0.4 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > Four-raw/four$value

done
echo All done
sleep 5
mkdir Five-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 0.5 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > Five-raw/five$value

done
echo All done
sleep 5
mkdir Six-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 0.6 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > Six-raw/six$value

done
echo All done
sleep 5
mkdir Seven-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 0.7 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > Seven-raw/seven$value

done
echo All done
sleep 5
mkdir Eight-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 0.8 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > Eight-raw/eight$value

done
echo All done
sleep 5
mkdir Nine-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 0.9 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > Nine-raw/nine$value

done
echo All done
sleep 5
mkdir Ten-raw
for value in {1..100}
do
echo $value


./ms $PSSUM 1 -I 4 $PS $PS $PS $PS -ej 1 2 1 -ej 2 3 1 -ej 3 4 1 -es $TG 2 1 -ej $TG 5 3 -r $RECOMB $LENGTH -T | tail -n+4 | grep -v // > treefile


partitions=($(wc -l treefile))


seq-gen -mHKY -l $LENGTH -s $SC -p $partitions <treefile > Ten-raw/ten$value

done
echo All done
