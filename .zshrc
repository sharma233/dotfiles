#completion
autoload -U compinit; compinit

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'

#prompt
PS1="%F{cyan}%~%f %F{red}${vcs_info_msg_0_}%f$ "
