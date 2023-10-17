# i3 cfg press key run a command
import subprocess

cmd_input = input("choose a command to run when a key is pressed\n[default i3lock]  :")
cmd_exist = subprocess.Popen("command -v " + cmd_input + " | wc -l", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True).communicate()[0] != b'0\n'
if cmd_exist:
    cmd = cmd_input
else:
    cmd = "i3lock"
print("Command set to: \033[1;36;40m", cmd,"\033[0;37;40m")

subprocess.run(["cp ~/.config/i3/config ~/afs/.git/.gitignore/.quoi/.coubeh/i3backup"], shell=True, capture_output=True, text=True)
keys = [
    'Escape', 'F2', 'F3', 'F4', 'F5', 'F6', 'F7', 'F8', 'F9', 'F10', 'F11', 'F12',
    'Print', 'Scroll_Lock', 'Pause/Break',
    '`', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', 'Backspace',
    'Tab', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\\',
    'Caps_Lock', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', "'", 'Return',
    'Shift_L', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/', 'Shift_R',
    'Control_L', 'Super_L', 'Alt_L', 'space', 'Alt_R', 'Super_R', 'Menu', 'Control_R',
    'Left', 'Up', 'Right', 'Down',
    'Home', 'End', 'Prior', 'Next',
    'Insert', 'Delete',
    'KP_0', 'KP_1', 'KP_2', 'KP_3', 'KP_4', 'KP_5', 'KP_6', 'KP_7', 'KP_8', 'KP_9',
    'KP_Enter', 'KP_Decimal', 'KP_Add', 'KP_Subtract', 'KP_Multiply', 'KP_Divide'
]
'''
######
PASSER SOUS BASH (on peut par ouvrir la config en python)
######
'''
f = open("~/.config/i3/config", "a")
#for key in keys:
#    f.write("bindsym Mod1+Shift+Key exec --no-startup-id "+ cmd)
f.write("bindsym Mod1+Shift+F1 exec --no-startup-id Thunar")
subprocess.run(["i3-msg restart"], shell=True, capture_output=True, text=True)
print("done.")
