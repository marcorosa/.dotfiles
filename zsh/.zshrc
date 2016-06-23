# Set up the prompt

autoload -U colors && colors
autoload -Uz promptinit
promptinit
# example multicolor:
#PS1="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

PS1="% %B%{$fg[green]%}%n@%m %{$fg[blue]%}%~ %b %{$reset_color%}%% "
# sheldon:
#PS1="% %B%{$fg[magenta]%}%n@%m %{$fg[blue]%}%~ %b %{$reset_color%}%% "

#prompt adam1
#prompt walters

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# Correction
setopt correctall

#load autojump
. /usr/share/autojump/autojump.zsh

#ltmux
ltmux() {
  WHOAMI=$(whoami)
  if tmux has-session -t $WHOAMI 2>/dev/null; then
    tmux -2 attach-session -t $WHOAMI
  else
    tmux -2 new-session -s $WHOAMI
  fi  
}

# use vim 
EDITOR=vim
VISUAL=vim

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# alias per connettersi all'ufficio
alias unibgvpn="sshuttle -r speedy -vv xxx.xxx.xxx.0/24"

# Enable fish-like colored suggestions
# Load zsh-syntax-highlighting.
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load zsh-autosuggestions.
source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh
# Enable autosuggestions automatically.
# Switch autosuggestions repo to branch 'v0.1.x' 
autosuggest_start

#zle-line-init() {
#  zle autosuggest-start
#}
#zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
#bindkey '^T' autosuggest-toggle

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
