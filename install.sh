#!/usr/bin/env bash

BACKUPDIR=~/.dotfiles-backup
BASEDIR=~/dotfiles
NOW=$(date +%Y%m%d%H%M%S)

mkdir -p "$BACKUPDIR"
mkdir -p ~/.config/lilyterm/
ln -sf "$BASEDIR"/.config/lilyterm/default.conf ~/.config/lilyterm/

FILES=(
    '.bash.d'
    '.re.pl'
    '.vim'
    '.Xmodmap'
    '.bash_profile'
    '.gitconfig'
    '.gitignore_global'
    '.inputrc'
    '.tmux.conf'
    '.vimrc'
)

for i in "${FILES[@]}" ; do
    if [ -e ~/"$i" ] && [ ! -L ~/"$i" ] ; then
        mv ~/"$i" "$BACKUPDIR"/"$i"-"$NOW"
    fi
    ln -sf "$BASEDIR"/"$i" ~/
done

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
if [ -d ~/.vim/bundle/vundle ] ; then
    cd ~/.vim/bundle/vundle
    git pull
else
    git clone --depth=1 https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

vim +BundleInstall +qa

