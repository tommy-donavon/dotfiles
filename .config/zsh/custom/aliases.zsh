alias fman="compgen -c | fzf | xargs man"

alias kc="kubectl"

alias l="ls -lAh"
alias pbc="pbcopy <"

# === terraform === #
alias tf="terraform"
alias tfa="terraform apply"
alias tff="terraform fmt -recursive"
alias tfp="terraform plan"

# === terragrunt === #
alias tg="terragrunt"
alias tga="terragrunt apply"
alias tgf="terragrunt hclfmt"
alias tgp="terragrunt plan"

# === tmux === #
alias tx="tmux new-session hx . \; split-window -h \; split-window -v lazygit \; attach"

# === zellij === #
alias t="zellij-runner"
alias z="zellij"
alias tls="zellij list-sessions"
alias ta="zellij attach "
alias tk="zellij kill-session "
alias tka="zellij kill-all-sessions"
alias tt="zellij --session generic --layout terminal"
