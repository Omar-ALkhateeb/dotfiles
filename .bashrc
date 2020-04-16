# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


Plum2=$(tput setaf 182);
green=$(tput setaf 62);
purple=$(tput setaf 161);
white=$(tput setaf 15);
green=$(tput setaf 2);
reset=$(tput sgr0);
BG_BLUE="$(tput setab 4)"
FG_BLACK="$(tput setab 0)"
FG_WHITE="$(tput setab 7)"

. ~/git-prompt.sh


export GIT_PS1_SHOWDIRTYSTATE=1
# export PS1="\[${green}\]<\u@\h in \W> $(__git_ps1 " (%s)") \$\[${reset}\]";
export PS1='\[${Plum2}\]{\u\[${purple}\]@\[${Plum2}\]\h in \[${purple}\]\W\[${Plum2}\]} $(__git_ps1 "%s")\$\[${reset}\] '
printf "${Plum2}"
fortune -s -n 30 | boxes -d unicornthink -a c
printf "${reset}\n"


# echo -ne ${BG_BLUE}${FG_WHITE}