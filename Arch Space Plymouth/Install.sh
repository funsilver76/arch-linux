###
# Install Plymouth Theme
###

# List available themes
plymouth-set-default-theme -l

sudo plymouth-set-default-theme -R arch-space

###
# Install Plymouth Boot Splash
###

# Copy "arch-space"
# ~ to: /usr/share/plymouth/themes

# Install
yaourt -S plymouth

# Open /etc/default/grub

# Find
GRUB_CMDLINE_LINUX_DEFAULT="quiet"

# Replace With
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"

# Regenerate Grub
grub-mkconfig -o /boot/grub/grub.cfg

# Edit /etc/mkinitcpio.conf

# Find
MODULES=""

# Replace With
MODULES="nouveau"

# Find
HOOKS="base udev autodetect modconf block filesystems keyboard fsck"

# Replace With
HOOKS="base udev plymouth autodetect modconf block filesystems keyboard fsck"

# Rebuild Init CP IO
mkinitcpio -p linux

# Disable Raw GDM
systemctl disable gdm

# Enable GDM Plymouth
systemctl enable gdm-plymouth
