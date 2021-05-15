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
nvm: core zsh
	"./.installs/$(DISTRO)/nvm"
yarn: core nvm
	"./.installs/$(DISTRO)/yarn"
node: core nvm yarn
	"./.installs/$(DISTRO)/node"
desktop: core nvm yarn node zsh alacritty git nvim scripts ctop
	"./.installs/$(DISTRO)/desktop"
ctop: core
	"./.installs/.scripts/ctop"
server: core nvim yarn node zsh git nvim scripts ctop
