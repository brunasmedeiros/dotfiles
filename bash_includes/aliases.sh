# Directory changing aliases
alias ghome='git rev-parse && cd "$(git rev-parse --show-cdup)"'

# Git aliases
alias gs="git status"
alias ga="git add"
alias gb="git branch"
set_git_complete gb _git_branch

alias gc="git commit"
alias pick="git cherry-pick"
alias gco="git checkout"
set_git_complete gco _git_checkout

alias got="git"
set_git_complete got _git

alias get="git"
set_git_complete get _git

alias branch='echo $(git rev-parse --abbrev-ref HEAD)'
alias gitsync="${DEVTOOLS_DIR}/git-tools/sync"
set_git_complete gitsync _git_branch


# Bundler and other ruby aliases
alias be="bundle exec"
alias bi="bundle install"
alias bp="bundle package --all"


# General aliases
standard_ls_options=''
if [ "$(ls --version 2>&1 | head -n 1 | grep -c GNU)" = "0" ]
then
  # Looks like this is not the GNU version of ls!

  # See if we are on OS X Darwin...
  if [ "$(uname -a 2>&1 | grep -c Darwin)" != "0" ]
  then
    # Darwin detected, so let's use their flag for color
    standard_ls_options+=' -G'
  fi
else
  # Using GNU ls, so add the color option GNU uses
  standard_ls_options+=' --color=auto'
fi
alias ls="ls ${standard_ls_options}"
alias ll="ls ${standard_ls_options} -lhA"