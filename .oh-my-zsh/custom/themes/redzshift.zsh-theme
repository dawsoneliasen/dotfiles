PROMPT=' ${return_status} %{$fg[magenta]%}%m %{$fg_bold[magenta]%}$USER%{$reset_color%} %{$fg_bold[blue]%}$(get_pwd)%{$reset_color%} $(git_prompt_info)${prompt_suffix}'

local return_status="%(?:%{$fg_bold[green]%}z:%{$fg_bold[red]%}z)"

local prompt_suffix="%{$fg[yellow]%}%{$reset_color%}"

# by shashankmehta (https://github.com/shashankmehta)
function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

