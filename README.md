What to setup on a new machine:

* Partitions:
    * /dev/sda1 is efi mounted on /boot
    * /dev/sda2 is a LUKS Encrypted Swapfile (make sure to add a hook, see the Arch Wiki)
    * /dev/sda3 is a LUKS Encrypted Disk (Linux-Filesystem) mounted on /mnt

* LightDM
    * run make and sudo make install in lightdm-tiny-greeter file

* i3-gaps

* Polybar

* Fonts
    * SF Pro Display
    * Robot Mono Medium for Powerline

* Wallpapers
    * set up nitrogen, just by running it

* Packages and Stuff
    * redshift -l 40.89:-111.89 for screen change at night
    * to get sound working, probably use alsa-utils
    * to get brightness working, use xfce4-power-utils
	* also use this to suspend on screen close, etc

* If you're feeling brave:
    * use Wayland + Sway instead of Xorg
