if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/usr/local/go/bin:$HOME/.emacs.d/bin:usr/local/elixir-ls/release:/usr/local/Cellar/rabbitmq/3.10.5/sbin

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias cc="cd ~/Gamezop"
alias hx="vim"
alias vconfig="hx ~/.config/nvim/init.vim"
alias zconfig="hx ~/.zshrc"
alias hxconfig="hx ~/.config/helix/config.toml"
alias todo="hx ~/Documents/todo.md"
alias config="cd ~/.config"
alias const="vim ~/Documents/constant.md"
alias szsh="source ~/.zshrc"
alias opsec="source ~/.config/gamezop/opinion-trading-service-secrets.sh"
alias bbsec="source ~/.config/gamezop/bidbook-service-secrets.sh"
alias vim="nvim"
# alias jk="source ~/.zshrc && hx $(find . -type f \( -name "*.exs" -o -name "*.go" -o -name ".ex" \)  | sort -n | tail -n1)" 
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
