# Get script's directory.
here=${0:a:h}

# If the script is a symlink, we want to follow the symlink back to we can
# access the executable.
if [ -h $0 ]; then
  here=$(dirname $(readlink $0))
fi

toplevel_exe="$here/catkin_toplevel.py"

# An easier version of catkin_make, that lets you build from anywhere in the
# workspace tree and automatically sources the setup file.
catkin_make_easy() {
  local cur_dir=$(pwd)
  local catkin_dir=$($toplevel_exe)

  # Bail if we're not in a catkin workspace.
  if [ -z $catkin_dir ]; then
    echo "Not in a catkin workspace."
    return 1
  fi

  cd $catkin_dir

  case $1 in
    "-s"|"--source-only")
      source devel/setup.zsh
    ;;
    *)
      catkin_make && source devel/setup.zsh
    ;;
  esac

  cd $cur_dir
}

alias ck="catkin_make_easy"
alias cks="catkin_make_easy -s"
