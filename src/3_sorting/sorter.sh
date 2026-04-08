#!/bin/sh

(head -n 1 ../2_json_to_csv/hh.csv && tail -n +2 ../2_json_to_csv/hh.csv | sort -t "," -k2,2 -k1,1) > hh_sorted.csv