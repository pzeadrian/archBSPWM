#! /bin/bash

cp -R $HOME/.config/alacritty $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/bspwm $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/init_session $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/polybar $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/sxhkd $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/X11 $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/zsh $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/ranger $HOME/Documents/dotfilesLinux/2_DesktopGUI

cd $HOME/Documents/dotfilesLinux
git add -A
git commit -m "Updating configs"
git push
cd
./.neovim.sh
