#!/bin/bash
tmux new-session -d -s tmuxos
tmux split-window -v -t 0 -p 20

tmux send-keys -t 0 'node splash.js' enter

tmux attach
