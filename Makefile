install: install-bash install-git install-jshint install-st done

install-bash:
	@echo "Installing bash preferences..."
	@cd ./bash && sh ./install.sh

install-git:
	@echo "Installing Git preferences..."
	@cd ./git && sh ./install.sh

install-jshint:
	@echo "Installing JSHint preferences..."
	@cd ./jshint && sh ./install.sh

install-st:
	@echo "Installing Sublime Text preferences..."
	@cd ./sublime-text && sh ./install.sh

done:
	@echo "Dotfiles successfully installed"

.PHONY: install