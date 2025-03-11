# Show text on startup
echo "e penala rizisor"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export CARGO_TARGET_DIR=/tmp/cargo-installQvks4B

# Enable 256-color support
export TERM="xterm-256color"

# Force color output for ls, grep, and other commands
export CLICOLOR=1
export LS_COLORS="$(dircolors -b)"  # Load default color scheme

# Brighter `ls` colors (custom scheme)
export LS_COLORS="di=1;34:ln=1;36:so=1;35:pi=1;33:ex=1;32:bd=1;34;46:cd=1;34;43:su=1;37;41:sg=1;30;43:tw=1;30;42:ow=1;30;43"

# Brighter `grep` colors
export GREP_COLORS="mt=1;37"  # Bright white for matches
alias grep='grep --color=auto'

# Enable colored output for common commands
alias ls='ls --color=auto'

# Brighter Bash prompt (Green user@host, Blue directory)
PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w\[\e[0m\]$ '

# Fix tmux colors (if using tmux)
if [ -n "$TMUX" ]; then
  export TERM="screen-256color"
fi

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# go
export PATH="$HOME/Go/bin:$PATH"
export PATH=$PATH:$(go env GOPATH)/bin

# node 
export PATH="$PATH:/home/rares/.nvm/versions/node/v22.11.0"

# flutter
export PATH="$HOME/development/flutter/bin:$PATH"

# set config directoy variable
export XDG_CONFIG_HOME="$HOME/.config"

export PATH="$HOME/.local/scripts:$PATH"

# bind alt+s for tmux-sessionizer
bind '"\es":"tmux-sessionizer\n"'
