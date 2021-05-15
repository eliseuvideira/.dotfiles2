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

ctop: core
	"./.installs/.scripts/ctop"

docker-compose: core ctop
	./.installs/.scripts/docker-compose

docker: core ctop docker-compose
	"./.installs/$(DISTRO)/docker"

alacritty: core
	stow --no-folding -t ~ alacritty

scripts-desktop: base
	stow --no-folding -t ~ scripts-desktop

arch-desktop: core docker node alacritty scripts-desktop
	"./.installs/arch/desktop"

arch-server: core docker node

debian-server: core docker node
