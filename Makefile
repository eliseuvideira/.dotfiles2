DISTRO:=$(shell ./.functions/get_distro)

.PHONY: alacritty git nvim scripts zsh distro stow

base:
ifeq ($(shell id -u), 0)
	@echo "This script must NOT be run as root"
else 
	"./.installs/$(DISTRO)/base"
endif

git: base
	stow --no-folding -t ~ git

vim: base
	stow --no-folding -t ~ nvim

zsh: base
	./.installs/.scripts/zsh && rm ~/.zshrc && stow --no-folding -t ~ zsh

scripts: base
	stow --no-folding -t ~ scripts

core: base git vim zsh scripts

nvm: core
	./.installs/.scripts/nvm

yarn: core nvm
	"./.installs/$(DISTRO)/yarn"

node: core nvm yarn
	./.installs/.scripts/node

# alacritty
alacritty: core
	stow --no-folding -t ~ alacritty

# ctop
ctop: core
	"./.installs/.scripts/ctop"

# scripts-desktop
scripts-desktop: base
	stow --no-folding -t ~ scripts-desktop

# desktop
desktop:
	"./.installs/arch/desktop"

arch-server: core

arch-desktop: core alacritty scripts-desktop desktop

debian-server: core
