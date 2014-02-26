#!/usr/bin/env bash

BACKUPDIR=~/.dotfiles-backup
BASEDIR=~/dotfiles
NOW=$(date +%Y%m%d%H%M%S)

mkdir -p "$BACKUPDIR"

DIRS=(
    '.config/lilyterm'
)

for i in "${DIRS[@]}" ; do
    mkdir -p "$i"
done

ln -sf "$BASEDIR"/.config/lilyterm/default.conf ~/.config/lilyterm/

FILES=(
    '.bash.d'
    '.re.pl'
    '.vim'
    '.Xmodmap'
    '.bash_profile'
    '.gitconfig'
    '.gitignore_global'
    '.tmux.conf'
    '.vimrc'
)

for i in "${FILES[@]}" ; do
    if [ -e ~/"$i" ] && [ ! -L ~/"$i" ] ; then
        mv ~/"$i" "$BACKUPDIR"/"$i"-"$NOW"
    fi
    ln -sf "$BASEDIR"/"$i" ~/
done

vim +BundleInstall +qa

