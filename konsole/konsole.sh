#!/bin/bash
# script to bind to open terminal shortcut
# maximizes konsole if minimized
# opens konsole on "main" tmux session, if said session does not exist, create it 


win_class="konsole.konsole"
launch_new="konsole -e tmux new-session -A -s main"
launch_old="wmctrl -x -a konsole.konsole &"

instances_curr=$(wmctrl -l -x | grep "$win_class")
if [[ -z $instances_curr ]]; then
    $launch_new
else
    $launch_old
fi
