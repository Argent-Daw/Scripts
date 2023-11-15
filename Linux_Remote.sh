#!/bin/bash

# Script Name:                  Configure Remote Access
# Author:                       Matthew Earles
# Date of latest revision:      11/15/2023
# Purpose:                      Linux Remote Access


# Install The ssh Software Package:
sudo apt install ssh -y

# Install The xrdp Software Package:
sudo apt install xrdp -y

# Set xrdp To Run Automatically
sudo systemctl enable --now xrdp

# Create Firewall Rules
sudo ufw allow from any to any port 22 proto tcp
sudo ufw allow from any to any port 3389 proto tcp
