# =============================================================================
# ZSH Configuration
# =============================================================================

# Oh-My-Zsh
export ZSH="/Users/mikey/.oh-my-zsh"

ZSH_THEME=""

# Plugins
plugins=(
  git
  brew
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# =============================================================================
# Environment
# =============================================================================

export GOPATH="$HOME/Dev"
export LANG=en_US.UTF-8

# =============================================================================
# Zsh Autosuggestions
# =============================================================================

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#663399,standout"

# Load Starship
eval "$(starship init zsh)"

export PATH=$PATH:$(go env GOPATH)/bin
