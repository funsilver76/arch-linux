# Copy "archlinux-horsehead.png"
# ~ to: /boot/grub/themes/archlinux-horsehead.png

# Open Grub Config
sudo nano /etc/default/grub

# Find
#GRUB_BACKGROUND=""

# Replace With
GRUB_BACKGROUND="/boot/grub/themes/archlinux-space.png"

# Rebuild GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg
