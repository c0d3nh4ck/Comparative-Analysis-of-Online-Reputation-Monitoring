#!/bin/bash
for f in *.dat
do
	awk '{print $1 $2 $5}' $f | sed 's/""/,/g' | sed 's/"//g' | sed -n '2,$ p' > ${f%.dat}.csv
done
