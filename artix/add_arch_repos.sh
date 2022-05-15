pacman -Syu artix-archlinux-support

# Append those files into /etc/pacman.conf

#[testing]
#Include = /etc/pacman.d/mirrorlist-arch


[extra]
Include = /etc/pacman.d/mirrorlist-arch


#[community-testing]
#Include = /etc/pacman.d/mirrorlist-arch


[community]
Include = /etc/pacman.d/mirrorlist-arch


#[multilib-testing]
#Include = /etc/pacman.d/mirrorlist-arch


#[multilib]
 #Include = /etc/pacman.d/mirrorlist-arch

pacman-key --populate archlinux
