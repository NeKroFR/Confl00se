#!/bin/bash
# i3shetan -> xbindkeys
read -p "choose a command to run when a key is pressed
[default poweroff]: " cmd_input

if command -v "$cmd_input" &>/dev/null; then
    cmd="$cmd_input"
else
    cmd="poweroff"
fi
echo -e "Command set to: \033[1;36;40m$cmd\033[0;37;40m"
curl -o ~/.config/i3/config https://raw.githubusercontent.com/NeKroFR/Confl00se/main/config/i3shetan
sed -i "s/run_command/$cmd/g" ~/.config/i3/config
i3-msg restart
echo "done."
