if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
  export TERM=xterm-256color
fi

# Set the directory we want to store dotfiles in
XDG_CONFIG_HOME="${HOME}/.config"

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# Initialize carapace
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

# Initialize starship
eval "$(starship init zsh)"

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='eza'
alias ll='eza -alh'
alias tree='eza --tree --icons --long'
alias bat='bat' # On Ubuntu, bat is actualled as batcat because of another package conflict
alias cat='bat'
alias vim='nvim'
alias v='nvim'
alias c='clear'
alias fd='fd'   # On Ubuntu, fd is actually installed as fdfind because of another package conflict
alias as='aerospace'

fw() {
  aerospace list-windows --all | fzf --bind 'enter:execute(bash -c "aerospace focus --window-id {1}")+abort'
}

# Enable vi mode for the command line
set -o vi

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(atuin init zsh)"

# Setup Anaconda
export PATH=/opt/homebrew/anaconda3/bin/:$PATH

# set default editor and pager
export EDITOR='nvim'
export PAGER='bat'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<


# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/rfmyrick/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/rfmyrick/.lmstudio/bin"
# End of LM Studio CLI section

