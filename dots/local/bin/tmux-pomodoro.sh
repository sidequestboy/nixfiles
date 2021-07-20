#!/usr/bin/env bash

curr_window=$(tmux display-message -p '#{window_id}')

while : 
do
  termdown 3s
  if [[ "$?" -ne 0 ]]; then break; fi

  work_window=$(tmux display-message -p '#{window_id}')
  tmux select-window -t:$curr_window

  termdown -t "break" 0
  if [[ "$?" -ne 0 ]]; then break; fi

  termdown 3s
  if [[ "$?" -ne 0 ]]; then break; fi

  termdown -t "let's work" 0
  if [[ "$?" -ne 0 ]]; then break; fi

  tmux select-window -t:$work_window
done

