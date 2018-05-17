#!/bin/bash
function create-link() {
    FILE=$1

    if [ -L ~/$FILE ]; then
        # Remove existing links
        unlink ~/$FILE
    elif [ -f ~/$FILE ]; then
        # Make a backup of whatever is currently there
        mv -v ~/$FILE{,.bak}
    fi

    # Create a link
    ln -s `pwd`/$FILE ~/$FILE
}

create-link .tmux.conf
create-link .vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle

# Install pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install Vundle and plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
