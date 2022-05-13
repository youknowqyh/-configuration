alias ls='ls -G'
alias python='python3'
alias pip='pip3'
export LSCOLORS=fxgxfxexbxegedabagacad
autoload -U colors && colors
export PROMPT="%n@%m %{$fg[green]%}%~%f %# "
# %n@%m %1~ %#
# export PROMPT="%n@%m %F{118}%~%f %# "
export PATH="/usr/local/opt/node@16/bin:$PATH"
export PATH="/usr/local/opt/go@1.13/bin:$PATH"
