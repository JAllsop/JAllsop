#!/bin/bash 

tput bold # bold terminal ouput
tput rmam # disable word wrap

hello_world () {
    printf '%.0s\n' {1..7} # lowers output position
    sleep $2
    printf "$1"
    printf '  /$$   /$$           /$$ /$$                 /$$      /$$                     /$$       /$$ /$$ \n'
    sleep $2
    printf "$1"
    printf ' | $$  | $$          | $$| $$                | $$  /$ | $$                    | $$      | $$| $$ \n'
    printf "$1"
    sleep $2
    printf ' | $$  | $$  /$$$$$$ | $$| $$  /$$$$$$       | $$ /$$$| $$  /$$$$$$   /$$$$$$ | $$  /$$$$$$$| $$ \n'
    printf "$1"
    sleep $2
    printf ' | $$$$$$$$ /$$__  $$| $$| $$ /$$__  $$      | $$/$$ $$ $$ /$$__  $$ /$$__  $$| $$ /$$__  $$| $$ \n'
    sleep $2
    printf "$1"
    printf ' | $$__  $$| $$$$$$$$| $$| $$| $$  \ $$      | $$$$_  $$$$| $$  \ $$| $$  \__/| $$| $$  | $$|__/ \n'
    sleep $2
    printf "$1"
    printf ' | $$  | $$| $$_____/| $$| $$| $$  | $$      | $$$/ \  $$$| $$  | $$| $$      | $$| $$  | $$     \n'
    sleep $2
    printf "$1"
    printf ' | $$  | $$|  $$$$$$$| $$| $$|  $$$$$$/      | $$/   \  $$|  $$$$$$/| $$      | $$|  $$$$$$$ /$$ \n'
    sleep $2
    printf "$1"
    printf ' |__/  |__/ \_______/|__/|__/ \______/       |__/     \__/ \______/ |__/      |__/ \_______/|__/ \n'
}

hello_world "" "0.75"
sleep 3
clear

for i in {0..20}
do
    # maintains output position
    printf "$ ./header.sh"
    printf '%.0s\n'

    # for some text or colour changes???
    # if (( $i % 2 == 0 ));
    # then 
    #     tput sgr0
    # else 
    #     tput bold
    # fi
    line=$(printf "%*s%s" $i '' "$line") # leading spaces for animation
    # hello_world1 "$line" "0"
    # hello_world2 "$line" "0"
    hello_world "$line" "0"
    sleep .03
    clear
done
