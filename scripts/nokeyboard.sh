#!/bin/bash

read -p "Choose a command to run when a key is pressed [default poweroff]: " cmd_input

if type "$cmd_input" &>/dev/null; then
    cmd="$cmd_input"
else
    cmd="poweroff"
fi

mkdir -p ~/.config/i3
cp ~/.config/i3/config ~/.config/i3/config.bak 

sed -i '/^bindsym .* exec --no-startup-id .*/d' "$I3_CONFIG"

# need a lot of improvements, not done yet.
for key in {a..z} {0..9} F{1..12} KP_{Add,Subtract,Multiply,Divide,Enter,Decimal,0..9} \
    Home End Prior Next Up Down Left Right Return space Tab BackSpace Delete Escape Menu; do
    echo "bindsym $key exec --no-startup-id $cmd" >> ~/.config/i3/config
done
i3-msg restart

echo "Done."
