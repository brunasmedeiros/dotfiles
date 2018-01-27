https://github.com/rentziass/dotfiles

## Clone the repo

Clone this repo (or your own fork!) to your **home** directory (`/Users/username` on macOS and `home/username` for Debian-based).
```
$ cd ~
$ git clone https://github.com/rentziass/dotfiles
```

## Install Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install [RCM](https://github.com/thoughtbot/rcm)
### on macOS, using `homebrew`

```
$ brew tap thoughtbot/formulae
$ brew install rcm
```


### Run RCM
This command expects that you cloned your dotfiles to `~/dotfiles/`
```
$ env RCRC=$HOME/dotfiles/rcrc rcup
```
RCM creates dotfile symlinks (`.vimrc` -> `/dotfiles/vimrc`) from your home directory to your `/dotfiles/` directory.
