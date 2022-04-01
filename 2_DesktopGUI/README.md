# Installation
First of all, you could install a display manager, for example:
- [Ly Display Manager](https://github.com/fairyglade/ly)
- [LightDM](https://github.com/canonical/lightdm)

Also, I recommend you to install an AUR helper, because some packages are going to be downloaded from that repository.
You could try:
- [pikaur](https://github.com/actionless/pikaur)
- [yay](https://github.com/Jguer/yay)

Now, let's go, first, you would need some deendencies.
```bash
sudo pacman -S bspwm sxhkd alacritty dmenu feh picom git --noconfirm
```

Also, you will need to install an AUR helper, I recommend [YAY](https://github.com/Jguer/yay), and then using it, install:
```bash
yay -S polybar
```

For copying my config, you should do:
```bash
mkdir Documents
mkdir .config
git clone https://github.com/pzeadrian/ArchLinuxConfigs
cd Documents/ArchLinuxConfigs
./configureBSPWM
```
