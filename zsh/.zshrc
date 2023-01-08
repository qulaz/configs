export CLICOLOR=1
export CLICOLOR_FORCE=1
# Generator: https://geoff.greer.fm/lscolors/
export LSCOLORS="cxfxCxdxbgegedabagacad"
export LS_COLORS="di=32:ln=35:so=1;32:pi=33:ex=31;46:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
zstyle ':completion:*:*:*:*:default' list-colors ${(s.:.)LS_COLORS}

# History in cache directory:
setopt histignoredups
setopt SHARE_HISTORY
HISTSIZE=20000
SAVEHIST=10000
HISTFILE=$HOME/.cache/zsh/history

# Load aliases and shortcuts if existent.
[ -f "$ZDOTDIR/.shortcutrc" ] && source "$ZDOTDIR/.shortcutrc"
[ -f "$ZDOTDIR/aliases/.aliasrc" ] && source "$ZDOTDIR/aliases/.aliasrc"

# Edit PATH
export PATH="$PATH:/Users/qulaz/.local/bin:$GOROOT/bin:$GOPATH/bin:$HOME/bin:/opt/homebrew/opt/coreutils/libexec/gnubin"

source $ZDOTDIR/zsh-autocomplete/zsh-autocomplete.plugin.zsh
zstyle ':autocomplete:*' widget-style menu-select
bindkey -M menuselect '\r' accept-line

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

# Load theme
eval "$(starship init zsh)"

source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  2>/dev/null
