#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

autoload -Uz compinit
compinit
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$HOME/.rbenv/bin:$HOME/.local/bin:$PATH"
# Load rbenv automatically by appending
# the following to ~/.zshrc:

eval "$(rbenv init -)"

source <(kubectl completion zsh)
alias k="kubectl"
alias tfaa="terraform apply -auto-approve"
alias tfp="terraform plan"
alias tfi="terraform init -reconfigure"

[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
eval "$(starship init zsh)"
