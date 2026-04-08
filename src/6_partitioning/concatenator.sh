#!/bin/sh

for file in *.csv; do
    if [ -z "$first_file" ]
    then
        cat $file > concat_hh.csv
        first_file=$file
    else
        tail -n +2 $file >> concat_hh.csv
    fi
done
