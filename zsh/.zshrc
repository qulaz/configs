export CLICOLOR=1
export CLICOLOR_FORCE=1
# Generator: https://geoff.greer.fm/lscolors/
export LSCOLORS="cxfxCxdxbgegedabagacad"
export LS_COLORS="di=32:ln=35:so=1;32:pi=33:ex=31;46:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
zstyle ':completion:*:*:*:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select

# History in cache directory:
setopt histignoredups
setopt SHARE_HISTORY
HISTSIZE=20000
SAVEHIST=10000
HISTFILE=$HOME/.cache/zsh/history

# Load aliases and shortcuts if existent.
[ -f "$ZDOTDIR/.shortcutrc" ] && source "$ZDOTDIR/.shortcutrc"
[ -f "$ZDOTDIR/aliases/.aliasrc" ] && source "$ZDOTDIR/aliases/.aliasrc"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=1

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Created by `pipx` on 2022-03-08 12:28:36
export PATH="$HOME/.local/bin:$PATH"

# gvm
[[ -s "/Users/qulaz/.gvm/scripts/gvm" ]] && source "/Users/qulaz/.gvm/scripts/gvm"
export PATH="$PATH:/Users/qulaz/.local/bin:$GOROOT/bin:$GOPATH/bin"

# Edit PATH
export PATH="$PATH:$HOME/bin"

# Completitions
_linkIfNeeded() {
    local file=$1
    local target="/usr/local/share/zsh/site-functions/$2"
    if [[ -f "${file}" && ! -e "${target}" ]]; then
        ln -s "${file}" "${target}"
    fi
}

_linkIfNeeded "/Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion" "_docker"
_linkIfNeeded "/Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion" "_docker-machine"
_linkIfNeeded "/Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion" "_docker-compose"
fpath=($ZDOTDIR/zsh-completions/src $fpath)
autoload -Uz compinit
compinit

# Load theme
eval "$(starship init zsh)"

source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  2>/dev/null
