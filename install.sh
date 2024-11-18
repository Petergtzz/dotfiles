#!/bin/zsh
###############################################################################
# This script creates symlinks from the home directory to any desired dotfiles in $HOME/dotfiles
# Also installs MacOs software
# Also installs Homebrew or Neovix
# Also sets up Neovim
###############################################################################

# dotfiles directory
dotfilesdir="${HOME}/dotfiles"

# list of files/folder to symlink in ${homedir}
# files=(zshrc zprofile zprompt bashrc bash_profile bash_prompt aliases private)

# change to the dotfiles directory
echo "Changing to $dotfilesdir directory"
cd "${dotfilesdir}" || exit

# create symlinks (will overwrite old dotfiles)
# for file in "${files[@]}"; do
#    echo "Creating symlink to $file in home directory."
#    ln -sf "${dotfiledir}/.${file}" "${HOME}/.${file}"
# done
#
# Run the MacOs Script
# ./macOS.sh

# Run the Homebrew Script
# ./brew.sh
