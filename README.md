# Configs

### zsh

#### Install

1. Clone this repo. [zsh](zsh) folder must be inside `~/.config`

```bash
git clone git@github.com:qulaz/configs.git
git submodule init && git submodule update
mkdir -p ~/.config && mv configs/* ~/.config
```

2. Set `ZDOTDIR` variable in `~/.zshenv`

```bash
echo "export ZDOTDIR=$HOME/.config/zsh" > ~/.zshenv
```

3. Install any [Nerd Font](https://www.nerdfonts.com/font-downloads) and set it as default font
   in your terminal emulator. I usually use JetBrains Mono
4. Install [Starship shell theme](https://starship.rs/guide/#%F0%9F%9A%80-installation)

#### Requirements

Without this tools config wont work properly

1. [brew](https://brew.sh/)
2. [Starship shell theme](https://starship.rs/guide/#%F0%9F%9A%80-installation)
3. [pyenv](https://github.com/pyenv/pyenv)
4. [gvm](https://github.com/moovweb/gvm)
5. [nvm](https://github.com/nvm-sh/nvm)

#### Preview

![Preview Image](zsh.png)
