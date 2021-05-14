FROM archlinux

RUN pacman -Syy && pacman -S --noconfirm --needed base-devel zsh

RUN useradd -m -G wheel -s /bin/zsh arch

RUN yes 123 | passwd arch

RUN chmod +w /etc/sudoers && sed -E -i 's/^# (%wheel ALL=\(ALL\) ALL)/\1/' /etc/sudoers && chmod -w /etc/sudoers

USER arch
