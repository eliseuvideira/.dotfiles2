install_yay() {
  git clone https://aur.archlinux.org/yay.git /opt/yay
  cd /opt/yay
  makepkg -si
  cd - &>/dev/null
}

# yay
[ -d /opt/yay ] || install_yay

pacman -S --needed $(cat "$(dirname "$0")/base.txt")
