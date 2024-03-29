SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY

fpath=(~/.zsh/completion $fpath)

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/autocomplete.zsh ]] && source ~/.zsh/autocomplete.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

# KeeAgent for wsl
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
  . ~/bin/wsl-ssh-agent-forwarder
fi

eval "$(starship init zsh)"