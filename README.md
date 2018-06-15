# catkin_make_easy

This repository provides an alternative to the `catkin_make` command for ROS,
called `catkin_make_easy`. As the name suggests, the goal is to make the
command easier to use.

The `catkin_make_easy` command differs from regular `catkin_make` in two ways:
1. It can be run from anywhere in the directory tree of a catkin workspace.
2. It automatically sources `devel/setup.zsh`. If you do `catkin_make_easy -s`,
   it will only source the setup file without building.

Two convenience aliases are also defined, `ck` for `catkin_make_easy`, and
`cks` for `catkin_make_easy -s`.

Currently, only zsh is supported. To enable the command, simply arrange for the
`catkin_make_easy.zsh` to be sourced by your `.zshrc`.
