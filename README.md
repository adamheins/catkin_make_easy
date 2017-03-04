# easy-catkin
This repository constains some scripts that have improved by catkin workflow
when doing ROS development.

`catkin_toplevel` is a Python script that prints the path of the root of the
current catkin workspace, or nothing if the current directory isn't in one.
This is used by `catkin.sh`. `catkin_toplevel` should be moved somewhere on
your path, like `/usr/local/bin/`.

`catkin.zsh` is a shell script intended to be sourced by your .zshrc file (this
can easily be changed to work with bash instead). This creates the shell
function `catkin`, which automatically runs `catkin_make && source
devel/setup.zsh` from anywhere in a catkin workspace. Alternatively, run
`catkin -s` to only do the sourcing.

Finally, `catkin.sh` also provides to short aliases, `ck` for `catkin`, and
`cks` for `catkin -s`.
