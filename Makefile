DISTRO:=$(shell ./.functions/get_distro)

.PHONY: alacritty git nvim scripts zsh distro stow
alacritty: stow
	stow --no-folding -t ~ alacritty
git:
	stow --no-folding -t ~ git
nvim:
	stow --no-folding -t ~ nvim
scripts:
	stow --no-folding -t ~ scripts
zsh:
	(cd arch && (make zsh || exit 0)) && rm ~/.zshrc && stow --no-folding -t ~ zsh
core:
	"./.installs/$(DISTRO)/core"
