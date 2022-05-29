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

export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export TERM='alacritty'
export PATH=$PATH:/home/user/.local/bin
export PATH=$PATH:/home/user/.scripts
export LANG=en_US.UTF8 cabal build
export FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n" #Docker nice format

alias ls='ls --color=auto'
alias vim='nvim'
alias tmux='tmux -u attach-session '
alias docker='sudo docker'

# Count down timer
#
#function countdown(){
#   date1=$((`date +%s` + $1)); 
#   while [ "$date1" -ge `date +%s` ]; do 
#     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
#     sleep 0.1
#   done
#}
#function stopwatch(){
#  date1=`date +%s`; 
#   while true; do 
#    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
#    sleep 0.1
#   done
#}

# Animedoro

#alias animedoro='tty-countdown -m 60 -n && ani-cli -H'

# >>>> Vagrant command completion (start)
. /opt/vagrant/embedded/gems/2.2.19/gems/vagrant-2.2.19/contrib/bash/completion.sh
# <<<<  Vagrant command completion (end)
