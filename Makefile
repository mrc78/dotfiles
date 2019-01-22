#

.PHONY: install shell neovim tmux ssh alacritty

install: shell neovim vim tmux ssh node

shell: ~/antigen
	stow shell

~/antigen:
	git clone https://github.com/zsh-users/antigen.git ~/antigen

neovim: ~/.config/vundle/Vundle.vim
	stow neovim

vim: ~/.config/vundle/Vundle.vim
	stow vim

~/.config/vundle/Vundle.vim:
	mkdir -p ~/.config/vundle
	git clone https://github.com/gmarik/Vundle.vim ~/.config/vundle/Vundle.vim

tmux: ~/.tmux/plugins/tpm
	stow tmux

node:
	stow node

~/.tmux/plugins/tpm:
	mkdir -p ~/.tmux/plugins
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ssh:
	mkdir -p ~/.ssh
	chmod 700 ~/.ssh
	stow ssh

