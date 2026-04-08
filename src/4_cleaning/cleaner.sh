#!/bin/sh

awk -F',' -v OFS=',' 'NR == 1 {print; next}
{
    res = ""
    if (tolower($3) ~ /junior/) {$3 = "\x22Junior\x22"}
    else if (tolower($3) ~ /middle/) {$3 = "\x22Middle\x22"}
    else if (tolower($3) ~ /senior/) {$3 = "\x22Senior\x22"}
    else {$3 = "-"}
    print
}' ../3_sorting/hh_sorted.csv > hh_positions.csv


