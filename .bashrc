alias ls="ls -halF"
alias ll="ls -la"

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# configure fzf if found
which -s fzf && eval "$(fzf --bash)"

# add (claude) to path if exists
[ -d $HOME/.local/bin ] && PATH=$HOME/.local/bin:$PATH
