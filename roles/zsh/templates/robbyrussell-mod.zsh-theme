# username
PROMPT="%{$fg[{% if e_username == "root" %}red{% else %}green{% endif %}]%}%n"
# hostname
PROMPT+=" %{$fg[yellow]%}%m"
# path
PROMPT+=" %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# error code: %(?:: %{$fg[red]%}%?)
