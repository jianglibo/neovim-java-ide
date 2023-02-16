# Powerlevel 10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git colorize extract macos common-aliases kubectl)
source $ZSH/oh-my-zsh.sh

# User configuration
export LANG="en_US.UTF-8"

# Aliases
alias vi="nvim"
alias vim="nvim"
alias zshconfig="vim $HOME/.zshrc"

# Functions
function rsdoc() {
  docker-compose -f docker-compose.yml stop $1
  docker-compose -f docker-compose.yml rm -f $1
  docker-compose -f docker-compose.yml up -d $1
}

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# Jump
eval "$(jump shell)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# gpg
export GPG_TTY=$(tty)

# rust
export CARGO_NET_GIT_FETCH_WITH_CLI=true

# go
if command -v go &> /dev/null
then
  export GOPRIVATE=github.com/Workiva/*
  export GOPATH=$(go env GOPATH)
  export GOROOT=$(go env GOROOT)
  export GOBIN=$(go env GOBIN)
  export PATH=$PATH:$GOPATH/bin
  export PATH=$PATH:$GOROOT/bin
  export PATH=$PATH:$GOBIN
fi

# scala
export PATH=$PATH:"$HOME/Library/Application Support/Coursier/bin"

# gcloud
if [ -f '/Users/kevinsookocheff/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kevinsookocheff/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/kevinsookocheff/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kevinsookocheff/google-cloud-sdk/completion.zsh.inc'; fi

# asdf
if [ -f '/opt/homebrew/opt/asdf/libexec/asdf.sh' ]; then
  source /opt/homebrew/opt/asdf/libexec/asdf.sh
fi
if [ -f '~/.asdf/plugins/java/set-java-home.zsh' ]; then
  source ~/.asdf/plugins/java/set-java-home.zsh
fi
if [ -f "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc" ]; then
  source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
fi

# # wk
# if [ -f "$HOME/.wk/profile" ]; then
#   source $HOME/.wk/profile
# fi

# kubernetes
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export KUBECONFIG=$HOME/.kube/kubeconfigs.yaml
export KUBE_CONFIG_PATH=$HOME/.kube/kubeconfigs.yaml

# dart
export PATH="$PATH":"$HOME/.pub-cache/bin"

# iTerm
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# home
export PATH=$PATH:"$HOME/bin"

