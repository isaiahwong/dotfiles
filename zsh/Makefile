install:
	@echo "Installing Oh My Zsh..."
	@if [ ! -d "$$HOME/.oh-my-zsh" ]; then \
		sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended; \
	else \
		echo "Oh My Zsh is already installed."; \
	fi
	@echo "Installing zsh-autosuggestions..."
	@if [ ! -d "$$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then \
		git clone https://github.com/zsh-users/zsh-autosuggestions $${ZSH_CUSTOM:-$$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions; \
	else \
		echo "zsh-autosuggestions is already installed."; \
	fi

.PHONY: install
