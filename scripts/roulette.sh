#!/bin/bash
read -p "choose a command to run (default: poweroff): " cmd_input

if [[ -z "$cmd_input" || ! $(command -v "$cmd_input") ]]; then
    cmd="poweroff"
else
    cmd="$cmd_input"
fi

echo "run_random_command() {" >> ~/.bashrc
echo "    if [ \$(( RANDOM % 6 )) -eq 0 ]; then" >> ~/.bashrc
echo "        $cmd" >> ~/.bashrc
echo "    fi" >> ~/.bashrc
echo "}" >> ~/.bashrc
echo "PROMPT_COMMAND=\"run_random_command; \$PROMPT_COMMAND\"" >> ~/.bashrc

echo "The command '$cmd' will run randomly (1 in 6 chance) before each prompt."

chmod 444 ~/.bashrc
