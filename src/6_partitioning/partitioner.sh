#!/bin/sh

awk -F',' '
NR == 1 {header = $0; next}
{
    prefix = substr($2, 2, 10)
    filename = prefix ".csv"

    if (!(filename in seen)) {
        print header > filename
        seen[filename] = 1
    }

    #здесь bash команда. проверяем, существует ли файл с такими именем и записываем в переменную file_exists
    #"test -f '" filename "'; echo $?" | getline file_exists

    #if (file_exists != 0) {print header > filename}

    print $0 >> filename
    # >> - дозапись

    #close(filename)

}' ../4_cleaning/hh_positions.csv
