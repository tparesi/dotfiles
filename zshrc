# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

source ~/.zsh/color.zsh
source ~/.zsh/editor.zsh
source ~/.zsh/history.zsh
source ~/.zsh/keybindings.zsh
source ~/.zsh/options.zsh
source ~/.zsh/path.zsh
source ~/.zsh/plugins.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh

# Private, client-specific config, aliases, etc.
[[ -f ~/.zshrc.private ]] && source ~/.zshrc.private
eval "$(rbenv init -)"

# Source Java SDK Manager
export SDKMAN_DIR="/Users/austinbackup/.sdkman"
[[ -s "/Users/austinbackup/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/austinbackup/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Applications/google-cloud-sdk/path.zsh.inc' ]; then . '/Applications/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Applications/google-cloud-sdk/completion.zsh.inc' ]; then . '/Applications/google-cloud-sdk/completion.zsh.inc'; fi
