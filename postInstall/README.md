# Arch installation

The starting point of this guide is right after a complete clean Arch based
distro installation. The
**[Arch Wiki](https://wiki.archlinux.org/index.php/Installation_guide)**
doesn't tell you what to do after setting the root password, it suggests installing
a bootloader, but before that I would make sure to have working internet:

```bash
pacman -S networkmanager
systemctl enable NetworkManager
```

Now you can install a bootloader and test it "safely", this is how to do it on
modern hardware,
[assuming you've mounted the efi partition on /boot](https://wiki.archlinux.org/index.php/Installation_guide#Example_layouts):

```bash
pacman -S grub efibootmgr os-prober
grub-install --target=x86_64-efi --efi-directory=/boot
os-prober
grub-mkconfig -o /boot/grub/grub.cfg
```

Now you can create your user:

```bash
useradd -m username
passwd username
usermod -aG wheel,video,audio,storage username
```

In order to have root privileges we need sudo:

```bash
pacman -S sudo
```

Edit **/etc/sudoers** with nano or vim by uncommenting this line:

```bash
## Uncomment to allow members of group wheel to execute any command
# %wheel ALL=(ALL) ALL
```

Now you can reboot:

```bash
# Exit out of ISO image, unmount it and remove it
exit
umount -R /mnt
reboot
```

After logging in, your internet should be working just fine, but that's only if
your computer is plugged in. If you're on a laptop with no Ethernet ports, you
might have used **[iwctl](https://wiki.archlinux.org/index.php/Iwd#iwctl)**
during installation, but that program is not available anymore unless you have
installed it explicitly. However, we've installed
**[NetworkManager](https://wiki.archlinux.org/index.php/NetworkManager)**,
so no problem, this is how you connect to a wireless LAN with this software:

```bash
# List all available networks
nmcli device wifi list
# Connect to your network
nmcli device wifi connect YOUR_SSID password YOUR_PASSWORD
```

Check [this page](https://wiki.archlinux.org/index.php/NetworkManager#nmcli_examples)
for other options provided by *nmcli*. The last thing we need to do before
thinking about desktop environments is installing **[Xorg](https://wiki.archlinux.org/index.php/Xorg)**:

```bash
sudo pacman -S xorg
```

Now you are ready to start creating your DE.
Check at those:
- [i3 Window Manager](https://github.com/pzeadrian/ArchLinuxConfigs/tree/main/i3wm)
- [bspwm](https://github.com/pzeadrian/ArchLinuxConfigs/tree/main/bspwm)
