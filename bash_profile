export PATH=${HOME}/.rbenv/bin:${PATH}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/bin:$PATH"

# If this is an interactive shell, load the git completion file so it can be used by aliases
case "$-" in
  *i*)
    source ~/.bash_includes/git-completion.bash
    source ~/.bash_includes/bash_functions.sh
    ;;
  *)
    ;;
esac

# Load all the bash profile include files
for bash_include in ~/.bash_includes/*.sh
do
  source ${bash_include}
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
# export PATH="$HOME/.rbenv/bin:$HOME/.nvm/bin:$PATH:~/bin/"
export PATH="$HOME/.nvm/bin:$PATH:~/bin"

# use ruby from rbenv
eval "$(rbenv init -)"

# Finally, source the .bash_local file again
# (also sourced in bashrc but we might have re-redefined things)
# source ~/.bash_local
