#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

prompt_color='\[\033[0;32m\]'
end_prompt='\[\033[0m\]'
symbol=🐲
PS1='\n'$prompt_color'┌(helcone'$symbol'Desktop)---[\W]\n'$prompt_color'└─[\A]\$\[\033[0;0m\]\] '
#PS1=$prompt_color'test$'
if [ -n "$RANGER_LEVEL" ];
then
	export PS1="[ranger]$PS1";
fi

export TERM='termite'
export PATH=$PATH:/home/user/.local/bin
export PATH=$PATH:/home/user/.scripts
export LANG=en_US.UTF8 cabal build

alias ls='ls --color=auto'
alias vim='nvim'
alias tmux='tmux -u attach-session '
. /usr/share/bash-completion/bash_completion
