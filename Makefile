DISTRO:=$(shell ./.functions/get_distro)

.PHONY: alacritty git nvim scripts zsh distro stow

# core packages
core:
	"./.installs/$(DISTRO)/core"

alacritty: core
	stow --no-folding -t ~ alacritty
git:
	stow --no-folding -t ~ git
nvim: core
	stow --no-folding -t ~ nvim
scripts:
	stow --no-folding -t ~ scripts
zsh: core
	"./.installs/.scripts/zsh" && rm ~/.zshrc && stow --no-folding -t ~ zsh
nvm: core zsh
	"./.installs/.scripts/nvm"
yarn: core nvm
	"./.installs/$(DISTRO)/yarn"
node: core nvm yarn
	"./.installs/.scripts/node"
desktop: core nvm yarn node zsh alacritty git nvim scripts ctop
	"./.installs/$(DISTRO)/desktop"
ctop: core
	"./.installs/.scripts/ctop"
server: core nvim yarn node zsh git nvim scripts ctop
