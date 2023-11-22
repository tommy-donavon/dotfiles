SECRETS="$HOME/.config/zsh/custom/secrets.sh"
GPG_ID="donavontommy@gmail.com"

eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

source "$SECRETS"
