
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

autoload -Uz compinit
compinit
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$HOME/.rbenv/bin:$PATH"
# Load rbenv automatically by appending
# the following to ~/.zshrc:

eval "$(rbenv init -)"

source <(kubectl completion zsh)
alias k="kubectl"


[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
