#!/usr/bin/env python

from __future__ import print_function

import os


def dir_is_ws_root(d):
    ''' True if the directory contains the file .catkin_workspace, indicating
        the root of a catkin workspace. '''
    return os.path.isfile(os.path.join(d, '.catkin_workspace'))


def main():
    home_dir = os.path.expanduser('~')

    while True:
        cur_dir = os.path.abspath(os.curdir)

        # We don't want to progress any further if we're not under a user's
        # home directory.
        if cur_dir == home_dir or home_dir not in cur_dir:
            return 1

        if dir_is_ws_root(cur_dir):
            print(cur_dir)
            return 0

        # Go up a directory.
        os.chdir('..')


if __name__ == '__main__':
    status = main()
    exit(status)
