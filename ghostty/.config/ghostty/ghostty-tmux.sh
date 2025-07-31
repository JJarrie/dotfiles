#!/bin/bash
SESSION="ghostty"
tmux has-session -t $SESSION &>/dev/null
if [ $? -eq 0 ]; then
  exec tmux attach -t $SESSION
else
  exec tmux new -s $SESSION
fi
