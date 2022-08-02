#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

source /usr/share/git/completion/git-prompt.sh
set_prompt()
{
   local last_cmd=$?
   local txtreset='$(tput sgr0)'
   local txtbold='$(tput bold)'
   local txtblack='$(tput setaf 0)'
   local txtred='$(tput setaf 1)'
   local txtgreen='$(tput setaf 2)'
   local txtyellow='$(tput setaf 3)'
   local txtblue='$(tput setaf 4)'
   local txtpurple='$(tput setaf 5)'
   local txtcyan='$(tput setaf 6)'
   local txtwhite='$(tput setaf 7)'

   # git branch
   PS1="\[$txtwhite\]$(__git_ps1 '(%s) ')"

   # User color: red for root, cyan for others
   if [[ $EUID == 0 ]]; then
       PS1+="\[$txtred\]"
   else
       PS1+="\[$txtcyan\]"
   fi

    # user
    PS1+="\[$txtbold\]\u\[$txtreset\]"

    # [ dir ]
    PS1+=" \[$txtbold$txtcyan\][ \[$txtreset$txtwhite\]\w\[$txtbold$txtcyan\] ]"
    PS1+="$\[$txtwhite$txtreset\] "
}
PROMPT_COMMAND='set_prompt'

motivate
alias xlogout='xfce4-session-logout --logout'
alias ls="exa"
