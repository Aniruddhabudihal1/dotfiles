# Color support for ls and grep
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# ls aliases
alias ll='ls -alF --color'
alias la='ls -A --color'
alias l='ls -CF --color'

# Navigation aliases
alias con="cd ~/.config"
alias ..='cd ..'

# Application aliases
alias nv='nvim'

# Clipboard aliases
alias c='xclip -sel clip'

# Alert alias for long running commands
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#edit i3 config
alias i3config='nvim ~/.config/i3/config'

#cargo run
alias cr='RUSTFLAGS="-A non_snake_case -A non_camel_case_types" cargo run'

#cargo build
alias cb='RUSTFLAGS="-A non_snake_case -A non_camel_case_types" cargo build'

# alias for mpd
alias music='ncmpcpp'

alias java_course='/home/ani/.local/share/tmc/tmc_cli_rust'

alias postgres='sudo -u postgres psql'
