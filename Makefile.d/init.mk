.PHONY: \
    prepare-init \
    vim-init \
    neovim-init \
    lightvim-init \
    tmux-init

prepare-init:
	@$(call green, "initialize stage")

vim-init:
	@$(call red, "vim-init")
	@$(call blue, "--\> initialize dein for Vim")
	vim -N -u NONE -i NONE -V1 -e -s --cmd "source $(DOTDIR)/vimrc" --cmd 'call dein#install()' --cmd quit

neovim-init:
	@$(call red, "neovim-init")
	@$(call blue, "--\> initialize dein for NeoVim")
	nvim +'call dein#install()' +qa
	nvim +'call dein#remote_plugins()' +qa
	nvim +'e main.go' +':GoInstallBinaries' +qa

lightvim-init:
	@$(call red, "lightvim-init")
	@$(call blue, "--\> initialize plug for NeoVim - light.vimrc")
	nvim -u ~/.dotfiles/light.vimrc --headless +'PlugInstall' +qa
	nvim -u ~/.dotfiles/light.vimrc --headless +'UpdateRemotePlugins' +qa

tmux-init:
	@$(call red, "tmux-init")
	@$(call blue, "--\> install tmux plugins")
	bash $(HOME)/.tmux/plugins/tpm/scripts/install_plugins.sh

