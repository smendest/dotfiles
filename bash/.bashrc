# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

. "$HOME/.cargo/env"

# Case insensitive terminal completion
bind 'set completion-ignore-case on'

# aliases
source ~/.bash_aliases

# envvars
EDITOR=/usr/bin/nvim

# Enhancing history search
export HISTIGNORE="ls:cd:exit:date:clear:history"
export HISTCONTROL=erasedups:ignorespace
export HISTSIZE=50000
export HISTFILESIZE=200000
shopt -s histappend # Append to history file, don't overwrite
export PROMPT_COMMAND="history -a; history -c; history -r;$PROMPT_COMMAND"
