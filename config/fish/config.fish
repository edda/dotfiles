set -g fish_greeting ''

set EDITOR /usr/local/bin/mvim

set PATH /usr/local/bin $PATH
set PATH /usr/local/sbin $PATH
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
set PATH $HOME/bin $PATH

alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gd="git diff"
alias web="ruby -run -e httpd . -p 5000"

# source host specific config
. $HOME/.config/fish/(hostname -s).fish

function fish_user_key_bindings
  bind \e.       'history-token-search-backward'
  bind \e\[1\;9A 'history-token-search-backward'
  bind \e\[1\;9B 'history-token-search-forward'
  bind \e\[1\;9C 'forward-word'
  bind \e\[1\;9D 'backward-word'
end

test -f /usr/local/etc/autojump.fish; and . /usr/local/etc/autojump.fish
