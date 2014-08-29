#!/bin/bash
files=`ls -1 ~/dotfiles/symlinks`
for file in $files; do
    echo "Creating symlink for $file"
    ln -sf ~/dotfiles/symlinks/$file ~/.$file
done
