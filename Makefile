all: install install-bash install-git install-jshint install-st

install:
	@sudo su

install-bash:
	@echo "Installing bash preferences..."
	@sh ./bash/install.sh

install-git:
	@echo "Installing Git preferences..."
	@sh ./git/install.sh

install-jshint:
	@echo "Installing JSHint preferences..."
	@sh ./jshint/install.sh

install-st:
	@echo "Installing Sublime Text preferences..."
	@sh ./sublime-text/install.sh

done:
	@echo "Dotfiles successfully installed"

.PHONY: all