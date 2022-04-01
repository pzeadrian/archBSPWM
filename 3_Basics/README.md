# Removable Media
For get the computer recognizing USB, Android phones and even NTFS disks, I recommend:
```bash
sudo pacman -S udiskie
sudo pacman -S mtpfs gvfs-mtp gvfs-gphoto2 usb-utils
pikaur -S jmtpfs
```

# Touchpad
If you are using a laptop, I recommend you to do this for have all gestures working correctly.
```bash
sudo pacman -S xf86-input-libinput
cd /etc/X11/xorg.conf.d
sudo nano 30-touchpad.conf
```

Now put this in the file and save changes:
```bash
Section "Inputclass"
  Identifier "devname"
  Driver "libinput"
  Option "Tapping" "on"
  Option "NaturalScrolling" "true"
EndSection
```

Now log out or reboot your laptop.

# Audio
For this, I recommend you to use pulseaudio, so you have to install two packages.
```bash
# Pulseaudio
sudo pacman -S pulseaudio
# Pavucontrol, for a graphical GUI
sudo pacman -S pavucontrol
```

# Bluetooth
Three steps to configure bluetooth
- Step 1: Install utilities
- Step 2: Enable Bluetooth service
- Step 3: Pair with Arch Linux


***UTILITIES***
```bash
# Bluez
sudo pacman -S bluez
# Bluex Utils
sudo pacman -S bluez-utils
# Blueman
sudo pacman -S blueman
```

Now, let's check if all is OK.
```bash
lsmod | grep btusb
sudo nano /etc/bluetooth/main.conf
```

The following command will tell you if the adapter is connected or is blocked.
```bash
sudo rfkill list
```

In the case that your adapter is blocking the connectivity, input the following command to unblock the connection.
```bash
sudo rfkill unblock bluetooth
```

And finally, enable bluetooth.
```bash
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service
```

If you already installed pulseaudio, you can do something for see bluetooth volume in pavucontrol
```bash
sudo pacman -S pulseaudio-bluetooth
reboot
```
