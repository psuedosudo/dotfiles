#!/bin/python
"""
    Custom script for symlinking my dotfiles.
"""

import os
import pathlib
import shutil

home = os.path.expanduser("~")

files = pathlib.Path(f"{home}/.files")
configs_path = f"{files}/config"
scripts_path = f"{files}/scripts"
configs = next(os.walk(configs_path))[1]


def symlink(source, destination):
    try:
        os.symlink(source, destination)
    except FileExistsError:
        try:
            if os.path.islink(destination):
                os.remove(destination)
            else:
                try:
                    os.remove(f"{destination}.bak")
                except:
                    pass
                shutil.copyfile(destination, f"{destination}.bak")
                os.remove(destination)
            os.symlink(source, destination)
        except IsADirectoryError:
            if os.path.islink(destination):
                shutil.rmtree(destination)
            else:
                try:
                    shutil.rmtree(f"{destination}.bak")
                except:
                    pass
                shutil.copytree(destination, f"{destination}.bak")
                shutil.rmtree(destination)
            os.symlink(source, destination)
        

# Standalone configs
# zshrc
source = f"{files}/zshrc"
destination = f"{home}/.zshrc"
symlink(source, destination)

# Symlink scripts for .files
destination = f"{home}/.scripts"
symlink(scripts_path, destination)


# Symlink configs for .config
for config in configs:
    source = f"{configs_path}/{config}"
    destination = f"{home}/.config/{config.split('/')[-1]}"
    symlink(source, destination)
