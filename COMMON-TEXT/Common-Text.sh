#!/usr/bin/bash

### THIS IS DEVELOPED BY ASHWINI SAHU IN 27.01.2020 ###

read -p $'\e[1;91mENTER THE PATH OF THE FIRST FILE: \e[0m\e[24;1;97m : ' path_1file

function file_check() {

if [ -f $path_1file ]
       then
               echo -e "\n\nI FOUND THE FILE 1.\n\n"
               read -p $'\e[1;91mENTER THE PATH OF THE SECOND FILE: \e[0m\e[24;1;97m : ' path_2file
               echo -e "\n\nI FOUND THE FILE 2.\n\n"
        else
               echo -e "CANT FIND THE FILE"
               exit 0
fi

}

function main() {

       echo -e "PRINTING THE SIMILARITIES IN BOTH THE FILE,\n\n\n"
       time_curr=$(date '+%T')
       awk 'NR==FNR{a[$1]++;next}$1 in a' $path_1file $path_2file | tee Similarities-$time_curr.txt


}


file_check
main
