#

.PHONY: install shell neovim tmux ssh alacritty

install: shell neovim tmux ssh alacritty node

shell: ~/antigen
	stow shell

alacritty:
	stow alacritty

~/antigen:
	git clone https://github.com/zsh-users/antigen.git ~/antigen

neovim: ~/.config/nvim/bundle/Vundle.vim
	stow neovim

~/.config/nvim/bundle/Vundle.vim:
	mkdir -p ~/.config/nvim/bundle
	git clone https://github.com/gmarik/Vundle.vim ~/.config/nvim/bundle/Vundle.vim

tmux: ~/.tmux/plugins/tpm
	stow tmux

node:
	stow node

~/.tmux/plugins/tpm:
	mkdir -p ~/.tmux/plugins
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ssh:
	stow ssh

