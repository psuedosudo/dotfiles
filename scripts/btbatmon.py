#!/bin/python3
#TODO: Make the script dynamically pull all bluetooth devices, and show their battery percentage as a nerdfont character.

from time import sleep
import subprocess
import os

def run_cmd(cmd):
    return subprocess.run(cmd, capture_output=True, shell=True).stdout.decode().strip()

devices = [
    ('Earbuds', '88_C9_E8_34_39_3F'),
    ('Headphones', 'A0_E9_DB_01_F3_B0')
]

first_run = True
buffer = ''
for i in devices:
    #battery = os.system(f"dbus-send --print-reply=literal --system --dest=org.bluez /org/bluez/hci0/dev_{i[1]} org.freedesktop.DBus.Properties.Get string:'org.bluez.Battery1' string:'Percentage' | tr -s ' ' | cut -d ' ' -f 4 > /dev/null 2>&1")
    battery = run_cmd(f"dbus-send --print-reply=literal --system --dest=org.bluez /org/bluez/hci0/dev_{i[1]} org.freedesktop.DBus.Properties.Get string:'org.bluez.Battery1' string:'Percentage' | awk '{{ print $3; }}'")
    if battery != "":
        if first_run == True:
            buffer += f"{i[0]}: {battery}%"
        else:
            buffer += f", {i[0]}: {battery}%"
print(buffer)
