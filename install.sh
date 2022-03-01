#/bin/bash
FOLDERS="nvim,tmux,alacritty,bash"

for folder in $(echo $FOLDERS | sed "s/,/ /g")
do
    stow -D $folder
    stow $folder
done
