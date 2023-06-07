#!/bin/bash

# install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
rm nvim.appimage
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

# clone my nvim config
nvim_dir=$HOME/.config/nvim
if [ -d $nvim_dir ]; then
	mv $nvim_dir ~/.config/fish_old
fi
git clone https://github.com/ChappieM/nvim.git $nvim_dir
