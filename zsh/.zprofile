# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=1

# Added by Toolbox App
export PATH="$PATH:/Users/qulaz/Library/Application Support/JetBrains/Toolbox/scripts"

# Created by `pipx` on 2022-03-08 12:28:36
export PATH="$HOME/.local/bin:$PATH"

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# gvm
[[ -s "/Users/qulaz/.gvm/scripts/gvm" ]] && source "/Users/qulaz/.gvm/scripts/gvm"
export PATH="$PATH:/Users/qulaz/.local/bin:$GOROOT/bin:$GOPATH/bin"
