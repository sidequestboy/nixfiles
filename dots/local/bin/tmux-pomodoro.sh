#!/usr/bin/env bash

tmux rename-window "pomodoro"

curr_window=$(tmux display-message -p '#{window_id}')

while : 
do
  termdown 25m
  if [[ "$?" -ne 0 ]]; then break; fi

  work_window=$(tmux display-message -p '#{window_id}')
  tmux select-window -t:$curr_window

  termdown -t "break" 0
  if [[ "$?" -ne 0 ]]; then break; fi

  termdown 5m
  if [[ "$?" -ne 0 ]]; then break; fi

  termdown -t "let's work" 0
  if [[ "$?" -ne 0 ]]; then break; fi

  tmux select-window -t:$work_window
done

