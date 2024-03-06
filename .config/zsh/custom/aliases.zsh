alias fman="compgen -c | fzf | xargs man"

alias kc="kubectl"

alias l="ls -lAh"
alias pbc="pbcopy <"

alias tf="terraform"
alias tfa="terraform apply"
alias tff="terraform fmt -recursive"
alias tfp="terraform plan"

alias tg="terragrunt"
alias tga="terragrunt apply"
alias tgf="terragrunt hclfmt"
alias tgp="terragrunt plan"

alias tx="tmux new-session hx . \; split-window -h \; split-window -v lazygit \; attach"
