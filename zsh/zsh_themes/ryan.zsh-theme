#!/bin/zsh

# Checks if working tree is dirty
function parse_git_dirty() {
   local STATUS=''
   local FLAGS
   FLAGS=('--porcelain')
   if [[ "$(command git config --get oh-my-zsh.hide-dirty)" != "1" ]]; then
      if [[ $POST_1_7_2_GIT -gt 0 ]]; then
         FLAGS+='--ignore-submodules=dirty'
      fi
      if [[ "$DISABLE_UNTRACKED_FILES_DIRTY" == "true" ]]; then
         FLAGS+='--untracked-files=no'
      fi
      STATUS=$(command git status ${FLAGS} 2> /dev/null | tail -n1)
   fi
   if [[ -n $STATUS ]]; then
      echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
   else
      echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
   fi
}

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# Directory info.
local current_dir='${PWD/#$HOME/~}'

function git_prompt_info() {
   ref=$(git symbolic-ref HEAD 2> /dev/null) || return
   echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" ["
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"

PROMPT="
%{$terminfo[bold]$fg[blue]%}%{$reset_color%} \
%{$fg[green]%}%n \
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
${git_info} \
%{$terminfo[bold]$fg[cyan]%}
 → %{$reset_color%}"
