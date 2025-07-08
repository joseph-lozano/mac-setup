# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "", it will not load a theme.
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  # Core functionality
  git
  fzf
  zoxide
  
  # Development tools
  node
  npm
  yarn
  docker
  docker-compose
  
  # Utilities
  colored-man-pages
  command-not-found
  copypath
  copyfile
  extract
  history-substring-search
  
  # Custom plugins (installed separately)
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Initialize Starship prompt
eval "$(starship init zsh)"

# Initialize mise
eval "$(mise activate zsh)"

# Initialize direnv
eval "$(direnv hook zsh)"

# Configure zoxide
export _ZO_ECHO=1                    # Print the matched directory before navigating
export _ZO_RESOLVE_SYMLINKS=1        # Resolve symlinks when storing paths

# Initialize zoxide
eval "$(zoxide init zsh)"

# Modern replacements
alias cat='bat'
alias find='fd'
alias ls='eza'
alias cd='z'

# Common aliases (using modern tools)
alias ll='ls -la'
alias la='ls -A'
alias l='ls'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Development
alias vim='nvim'
alias vi='nvim'

# History configuration
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY

# Key bindings for history substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down