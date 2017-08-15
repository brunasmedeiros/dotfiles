# Registers git completes for aliases, but only if the shell is
# interactive
set_git_complete () {
  case "$-" in
    *i*)
      __git_complete $1 $2
      ;;
    *)
      ;;
  esac
}