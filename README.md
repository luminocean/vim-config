# Installation

Make sure you have a recent VIM build 
> Needs to be later that 7.4.45 since YouCompleteMe relys on it.
> If you are using Mac, the vim might be quite old.
> A clever choice is to install a MacVim and alias the console app comes with it to 'vim' 

Run the following commands:
```
# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# clone this repo and copy .vimrc to your home folder
# ...

vim # and inside VIM run :PluginInstall to install all the plugins
```

And you are ready to go!

> If it shows : YouCompleteMe unavailable: requires Vim compiled with Python (2.6+ or 3.3+) support
> you need to get a new VIM with python support.


# Install VIM on ubuntu 14.04

The VIM that comes with ubuntu 14.04 isn't new enough. We need to compile and install a new version of it.
Reference: https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

Do the following:

1. install dependencies

```
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git
```

2. remove existing VIM

```
sudo apt-get remove vim vim-runtime gvim
```

Don't worry. This VIM was installed by you using apt-get. It's not a built-in command.

3. install vim

```
git clone https://github.com/vim/vim.git
cd vim

# need to modify some paths here to your machine-specific name
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-perlinterp \
            --enable-luainterp \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr

make VIMRUNTIMEDIR=/usr/share/vim/vim80

sudo make install
```

To uninstall the vim, cd this dir and run `sudo make uninstall`
