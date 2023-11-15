#!/bin/bash

# Script Name:                  Virtual Box
# Author:                       Matthew Earles
# Date of latest revision:      11/15/2023
# Purpose:                      Installation of Virtual Box

# Installation of Virtual box and set it to the dock favorites!
sudo apt update

sudo apt install virtualbox -y

# Add the Virtualbox Extension Pack
sudo apt install virtualbox-ext-pack -y

# Create a shortcut to Virtualbox
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"

# Source: https://codefellows.github.io/setup-guide/ops-setup/4-virtualbox.html

# End
