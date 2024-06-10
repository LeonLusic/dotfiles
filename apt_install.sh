#!/usr/bin/bash

# Define a list of packages
packages=(
    tldr
    fzf
    curl
    git
    btop
    wget
    tree
)

# Update package lists
sudo apt update

# Install packages
sudo apt install -y "${packages[@]}"
