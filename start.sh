#!/bin/bash
tmux new-session -d -s tmuxos
tmux split-window -d -t 0 -v
tmux split-window -d -t 0 -h
tmux split-window -d -t 0 -v
tmux split-window -d -t 2 -v

tmux send-keys -t 0 'echo "hello world"' enter
tmux send-keys -t 1 'htop' enter

tmux send-keys -t 2 'apt-get moo' enter
tmux send-keys -t 3 'echo "hi"' enter

tmux attach
