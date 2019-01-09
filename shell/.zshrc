#!/usr/bin/env zsh
# ~/.zshrc

# antigen
## git clone https://github.com/zsh-users/antigen.git
source ${HOME}/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle rvm
antigen bundle colored-man-pages
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme gozilla
antigen apply

export ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
export ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
export HIST_STAMPS="yyyy-mm-dd"
export LANG=en_US.UTF-8
export EDITOR='nvim'
export PAGER='less'
bindkey -v
umask 022
unsetopt sharehistory

# nvim
alias vi='nvim'
alias vim='nvim'
alias view="nvim -R"

# vagrant
export VAGRANT_DEFAULT_PROVIDER=virtualbox

# docker
export DOCKER_HIDE_LEGACY_COMMANDS=1

# ansible
export ANSIBLE_NOCOWS=1

# .local
export PATH=${HOME}/bin:${HOME}/.local/bin:${PATH}
export MANPATH="${HOME}/.local/share/man:${MANPATH}"
export INFOPATH="${HOME}/.local/share/info:${INFOPATH}"

# https://blog.packagecloud.io/eng/2017/02/21/set-environment-variable-save-thousands-of-system-calls/
export TZ="Europe/Madrid"

eval "$(direnv hook zsh)"

if [ -f ${HOME}/.localenv ]
then
    source ${HOME}/.localenv
fi

