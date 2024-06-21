#!/bin/bash
for f in *.csv
do 
	python img_download.py $f
	mv *.jpg ${f%.csv}
done