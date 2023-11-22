# env
export XDG_CONFIG_HOME="${HOME}/.config" # to make macos more XDG compliant
export XDG_CACHE_HOME="${HOME}/.config/zsh/zcompcache"
export PATH="${HOME}/bin:${PATH}"

zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache

# oh-my-zsh
plugins=(
	terraform
  zsh-autosuggestions
)

export ZSH="${XDG_CONFIG_HOME}/zsh/ohmyzsh"
export ZSH_CUSTOM="${XDG_CONFIG_HOME}/zsh/custom"
source ${ZSH}/oh-my-zsh.sh
source "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# go
export GOBIN="${HOME}/go/bin"
export PATH="${GOBIN}:${PATH}"

# starship
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="${HOME}/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
