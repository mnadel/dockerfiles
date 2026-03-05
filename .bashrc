alias ls='ls -halF'
alias ll='ls -la'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

if which -s fzf; then
    eval "$(fzf --bash)"
fi

PATH="$HOME/.local/bin:$PATH"
