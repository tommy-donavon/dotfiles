# env
export XDG_CONFIG_HOME="${HOME}/.config" # to make macos more XDG compliant
export XDG_CACHE_HOME="${HOME}/.config/zsh/zcompcache"
export PATH="${HOME}/bin:${PATH}"
export EDITOR="hx"

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

# === zellij === #
export ZELLIJ_RUNNER_ROOT_DIR="Dev"
export ZELLIJ_RUNNER_IGNORE_DIRS="node_modules,target"
export ZELLIJ_RUNNER_MAX_DIRS_DEPTH="3"
export ZELLIJ_RUNNER_LAYOUTS_DIR=".config/zellij/layouts"
export ZELLIJ_RUNNER_BANNERS_DIR=".config/zellij/banners"

# === go === #
export GOBIN="${HOME}/go/bin"
export PATH="${GOBIN}:${PATH}"

# === starship === #
eval "$(starship init zsh)"

export PNPM_HOME="${HOME}/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export CARGO_HOME="${HOME}/.cargo/bin"
case ":$PATH:" in
  *":$CARGO_HOME:"*) ;;
  *) export PATH="$CARGO_HOME:$PATH" ;;
esac

export CARGO_BIN="${HOME}/.cargo/bin/bin"
case ":$PATH:" in
  *":$CARGO_BIN:"*) ;;
  *) export PATH="$CARGO_BIN:$PATH" ;;
esac

export ZIG_HOME="${HOME}/zig"
case ":$PATH:" in
  *":$ZIG_HOME:"*) ;;
  *) export PATH="$ZIG_HOME:$PATH" ;;
esac

export CODEQL_HOME="${HOME}/codeql"
case ":$PATH:" in
  *":$CODEQL_HOME:"*) ;;
  *) export PATH="$CODEQL_HOME:$PATH" ;;
esac

# bun completions
[ -s "/Users/tommy.donavon/.bun/_bun" ] && source "/Users/tommy.donavon/.bun/_bun"
