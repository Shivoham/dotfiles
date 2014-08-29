#!/bin/bash
files=`ls -1 ~/dotfiles/symlinks`
for file in $files; do
    echo "Creating symlink for $file"
    echo ~/dotfiles/symlinks/$file
    ln -sf ~/dotfiles/symlinks/$file ~/.$file
done
