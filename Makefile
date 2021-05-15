DISTRO:=$(shell ./.functions/get_distro)

.PHONY: alacritty git nvim scripts zsh distro stow

# base installs for each distro
base:
	"./.installs/$(DISTRO)/core"

# git config
git:
	stow --no-folding -t ~ git

# vim config
vim: base
	stow --no-folding -t ~ nvim

zsh: bash
	"./.installs/.scripts/zsh" && rm ~/.zshrc && stow --no-folding -t ~ zsh

# scripts
scripts: base
	stow --no-folding -t ~ scripts

# core basics
core: base git vim zsh scripts

# nvm
nvm: core zsh
	"./.installs/.scripts/nvm"

# yarn
yarn: core nvm
	"./.installs/$(DISTRO)/yarn"

# node
node: core nvm yarn
	"./.installs/.scripts/node"

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
