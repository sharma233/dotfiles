#force disable vim mode
bindkey -e

#completion
autoload -U compinit; compinit

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

#check for staged/unstaged changes
zstyle ':vcs_info:*' check-for-changes true
# Format the vcs_info_msg_0_ variable to include branch, 
# action, and staged/unstaged files
zstyle ':vcs_info:git:*' actionformats 'on %b|%a%u%c'

#prompt
setopt PROMPT_SUBST
PS1='%F{cyan}%~%f %F{red}${vcs_info_msg_0_}%f$ '

#ruby
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/Cellar/z/1.12/etc/profile.d/z.sh
export PATH=/Users/surya/.local/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
