#!/bin/bash
# Setup fzf
# ---------

# {% if SYSTEM.platform == "Mac OS" %}
#<yolk> if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  #<yolk> PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
#<yolk> fi

#<yolk> # Auto-completion
#<yolk> # ---------------
#<yolk> [[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null

#<yolk> # Key bindings
#<yolk> # ------------
#<yolk> source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"

# {% else %}
## for arch ##
# Auto-completion
# source "/usr/share/fzf/completion.zsh"
# Key bindings
# source "/usr/share/fzf/key-bindings.zsh"

## for fedora ##
source "/usr/share/fzf/shell/key-bindings.zsh"


#### fzf colorscheme ###

theme=$(darkman get)
if [[ "$theme" == "dark" ]]; then
 # . "$ZDOTDIR/fzf-themes/tokyonight_night.zsh"
. "$ZDOTDIR/fzf-themes/kanagawa_night.zsh"
else
# . "$ZDOTDIR/fzf-themes/tokyonight_day.zsh"
. "$ZDOTDIR/fzf-themes/kanagawa_day.zsh"
fi
# {% end %}
export FZF_DEFAULT_OPTS_FILE="$HOME/.config/fzf/fzfrc"
