alias ls="ls -halF"
alias ll="ls -la"
alias ..="cd .."

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# configure fzf if found
which -s fzf && eval "$(fzf --bash)"

# add (claude) to path if exists
[ -d /home/claude/.local/bin ] && PATH=/home/claude/.local/bin:$PATH
