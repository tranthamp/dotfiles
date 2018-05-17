## Install script

This will automatically install the settings and attempt backup existing settings.

```
./install.sh
```

## Vim settings

### Install the .vimrc
```
cp .vimrc ~
```

### Install pathogen
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

### Install Vundle and plugins
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

## Tmux settings

### Install the .vimrc
```
cp .tmux.conf ~
```
