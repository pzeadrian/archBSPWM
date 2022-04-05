#! /bin/bash

cp -R $HOME/.config/alacritty $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/bspwm $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/init_session $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/polybar $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/sxhkd $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/X11 $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/zsh $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/ranger $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/picom $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp -R $HOME/.config/rofi $HOME/Documents/dotfilesLinux/2_DesktopGUI
cp $HOME/.dotfiles.sh $HOME/Documents/dotfilesLinux/2_DesktopGUI/SYNC.sh
cp $HOME/.neovim.sh $HOME/Documents/dotfilesLinux/2_DesktopGUI/SYNC.sh

cd $HOME/Documents/dotfilesLinux
git add -A
git commit -m "Updating configs"
git push
cd
echo "--> Executing neovim sync"
./.neovim.sh
