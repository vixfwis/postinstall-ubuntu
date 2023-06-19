# keybinds
bindkey '^H' backward-kill-word

# options
setopt hist_ignore_space        # ignore space prefixed commands
setopt hist_ignore_dups         # ignore duplicates
setopt share_history            # share history between sessions
unsetopt beep                   # no bell
unsetopt hist_beep
unsetopt list_beep

# aliases
alias ls='exa'
alias l='exa -lh'
alias ll='exa -lh'
alias la='exa -lha'
alias less='less --quiet'
alias ffmpeg='ffmpeg -hide_banner'
alias grep='grep --color'
alias gpgreset='pkill -SIGHUP gpg-agent'
mkcd() {
    mkdir -p -- "$1" && cd -- "$1"
}

# fzf
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
export FZF_DEFAULT_COMMAND='fd . -t f --hidden'
export FZF_CTRL_T_COMMAND='fd . -t f --hidden'
export FZF_ALT_C_COMMAND='fd . -t d --hidden'
