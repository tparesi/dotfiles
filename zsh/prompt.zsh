# Modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git current-branch 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[green]%}$current_branch%{$reset_color%}"
  fi
}

precmd() {
  # Set the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

setopt promptsubst

# Allow exported PS1 variable to override default prompt.
if ! env | grep -q '^PS1='; then
  PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info) %# '
fi

# Use Pure prompt
autoload -U promptinit; promptinit
# prompt pure
