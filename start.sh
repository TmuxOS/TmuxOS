#!/bin/bash
export TERM=xterm-256color

tmux -2 -f /home/$USER/.tmux.conf new-session -d -s tmuxos
tmux source-file /home/$USER/.tmux.conf
tmux split-window -v -t 0 -p 20

tmux send-keys -t 0 "node $(dirname -- $0)/splash.js" enter

tmux attach
