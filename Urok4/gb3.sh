#!/bin/bash
cd ~
# mkdir gb3
cd gb3
mkdir -p 201{0..7}/{01..12};
# set -x
touch {001..003}.txt;
# set +x
for i in $(ls | grep txt)
 do echo "Файл ""$i">>$i
 done
 for i in {2010..2017}
 do 
 	for j in {01..12}
 	do 
 		`cp *.txt $i/$j`
 	done
 done
 rm -rf *.txt


