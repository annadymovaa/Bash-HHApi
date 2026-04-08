#!/bin/sh

awk -F',' -v OFS=',' 'NR > 1 {
    if ($3 != "-") {count[$3]++}
}
END {
    print "\"name\",\"count\""
    for (val in count) {
        print val "," count[val]
    }

}' ../4_cleaning/hh_positions.csv > hh_uniq_positions.csv

(head -n 1 hh_uniq_positions.csv && tail -n +2 hh_uniq_positions.csv | sort -t "," -k2,2rn) > tmp.csv && mv tmp.csv hh_uniq_positions.csv
