#!/bin/python
# .files/stage.py
"""
    Custom script for symlinking my dotfiles.
"""

import os
import pathlib

home = os.path.expanduser("~")
files = pathlib.Path(f"{home}/.files")
configs_path = f"{files}/config"
scripts_path = f"{files}/scripts"
configs = next(os.walk(configs_path))[1]


# Standalone configs
# zshrc
try:
    os.symlink(f"{configs_path}/zshrc", f"{home}/.zshrc")
except FileExistsError:
    os.copy(f"{home}/.zshrc", f"{home}/.zshrc.bak")
    os.remove(f"{home}/.zshrc")
    os.symlink(f"{configs_path}/zshrc", f"{home}/.zshrc")


# Symlink scripts for .files
try:
    os.symlink(f"{home}/.files/scripts", f"{home}/.scripts")
except FileExistsError:
    os.copy(f"{home}/.scripts", f"{home}/.scripts.bak")
    os.remove(f"{home}/.scripts")
    os.symlink(f"{home}/.files/scripts", f"{home}/.scripts")


# Symlink configs for .config
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

