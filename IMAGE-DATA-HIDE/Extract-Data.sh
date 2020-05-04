#!/usr/bin/bash

### THIS IS DEVELOPED BY ASHWINI SAHU IN 27.01.2020 ###

read -p $'\e[1;91mENTER THE PATH OF THE IMAGE: \e[0m\e[24;1;97m : ' path_image

function file_check() {

if [ -f $path_image ]
       then
               echo -e "\n\nI FOUND THE IMAGE.\n\n"
               
        else
               echo -e "YOUR IMAGE DOESNT FOUND, PLEASE ENTER THE RIGHT PATH"
               exit
               
fi

}

read -p $'\e[1;91mENTER THE MASTER PASSWORD TO EXTRACT THE DATA : \e[0m\e[24;1;97m : ' password

function main() {

    
    steghide extract -sf $path_image -p $password &> dev/null

}

file_check
main