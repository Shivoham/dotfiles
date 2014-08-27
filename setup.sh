#!/bin/bash
files=`ls -1 $dir`
for file in $files; do
    echo "Creating symlink for $file";
    ln -s $dir/$file ~/.$file
done
