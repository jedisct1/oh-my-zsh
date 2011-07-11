if [ $UID -eq 0 ]; then
  CARETCOLOR="red"
  LOGINCOLOR="white"
else
  CARETCOLOR="blue"
  LOGINCOLOR="cyan"
fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='
%{$fg_bold[$CARETCOLOR]%}-=[%{$fg[$LOGINCOLOR]%}%n%{$fg[white]%}@%{$fg[$LOGINCOLOR]%}%m%{$fg_bold[$CARETCOLOR]%}]=%{$fg_bold[green]%}%p$fg_bold[$CARETCOLOR]%}($fg_bold[green]%}%{$fg[white]%}%9(c!...!)%8c$fg_bold[$CARETCOLOR]%})%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}$(svn_prompt_info)%{${fg_bold[$CARETCOLOR]}%}>%{$reset_color%} '
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="+git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%} X %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

ZSH_PROMPT_BASE_COLOR="%{$fg_bold[blue]%}"
ZSH_THEME_REPO_NAME_COLOR="%{$fg_bold[red]%}"

ZSH_THEME_SVN_PROMPT_PREFIX="+svn:("
ZSH_THEME_SVN_PROMPT_SUFFIX=")"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[red]%} X %{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN=" "
