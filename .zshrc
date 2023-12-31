#completion
autoload -U compinit; compinit

#vi mode
bindkey -v

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
