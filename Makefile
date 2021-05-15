DISTRO:=$(shell ./.functions/get_distro)

.PHONY: alacritty git nvim scripts zsh distro stow
alacritty: core
	stow --no-folding -t ~ alacritty
git:
	stow --no-folding -t ~ git
nvim: core
	stow --no-folding -t ~ nvim
scripts:
	stow --no-folding -t ~ scripts
zsh: core
	"./.installs/$(DISTRO)/zsh" && rm ~/.zshrc && stow --no-folding -t ~ zsh
core:
	"./.installs/$(DISTRO)/core"
