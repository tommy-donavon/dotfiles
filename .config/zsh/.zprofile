SECRETS="$HOME/.config/zsh/custom/secrets.sh"

eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

source "$SECRETS"
