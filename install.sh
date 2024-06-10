#!/usr/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in $HOME/dotfiles
# And also sets up VS Code
############################

# dotfiles directory
dotfiledir="${HOME}/dotfiles"

# list of files/folders to symlink in ${homedir}
files=(bashrc bash_profile bash_prompt aliases)

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd "${dotfiledir}" || exit

# create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
    echo "Creating symlink to $file in home directory."
    ln -sf "${dotfiledir}/.${file}" "${HOME}/.${file}"
done

# Install apt packages
chmod +x apt_install.sh
./apt_install.sh

# Configure Git account
chmod +x git.sh
./git.sh

# Install python
chmod +x python.sh
./python.sh

# Install Docker
chmod +x docker.sh
./docker.sh

echo "Installation Complete!"
