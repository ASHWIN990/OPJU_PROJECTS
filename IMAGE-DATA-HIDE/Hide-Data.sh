#!/usr/bin/bash

### THIS IS DEVELOPED BY ASHWINI SAHU IN 27.01.2020 ###

read -p $'\e[1;91mENTER THE PATH OF THE IMAGE: \e[0m\e[24;1;97m : ' path_image

function file_check() {

if [ -f $path_image ]
       then
               echo -e "\n\nI FOUNT THE IMAGE.\n\n"
               
        else
               echo -e "YOUR IMAGE DOESNT FOUND, PLEASE ENTER THE RIGHT PATH"
               exit 0
fi

}


read -p $'\e[1;91mENTER THE SECRET CODE TO HIDE : \e[0m\e[24;1;97m : ' secret

read -p $'\e[1;91mENTER THE MASTER PASSWORD TO HIDE THE DATA : \e[0m\e[24;1;97m : ' password

function main() {

    echo -e $secret > secret.txt
    steghide embed -cf $path_image -ef secret.txt -p $password &> /dev/null
    echo -e "SUCCESSFULLY HIDE THE DATA"
    rm -rf secret.txt

}

file_check
main