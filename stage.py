#!/bin/python
# .files/stage.py
"""
    Custom script for symlinking my dotfiles.
"""
import os
import pathlib
home = os.path.expanduser("~")

try:
    os.symlink(f"{home}/.files/scripts", f"{home}/.scripts")
except FileExistsError:
    pass

configs_path = f"{home}/.files/config"
configs = next(os.walk(configs_path))[1]
for config in configs:
    try:
        os.symlink(f"{configs_path}/{config}", f"{home}/.config/{config.split("/")[-1]}")
    except FileExistsError:
        if os.path.islink(f"{home}/.config/{config.split('/')[-1]}"):
            pass
        else:
            os.copy(f"{home}/.config/{config.split('/')[-1]}", f"{home}/.config/{config.split('/')[-1]}.bak")
            os.remove(f"{home}/.config/{config.split('/')[-1]}")
            os.symlink(f"{configs_path}/{config}", f"{home}/.config/{config.split('/')[-1]}")

