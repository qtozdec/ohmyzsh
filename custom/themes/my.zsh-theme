# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=520888#p520888


local ZSH_ESSEMBEH_PREFIX="localhost"
if [[ -n "$SSH_CONNECTION" ]]; then
	# display the source address if connected via ssh
	ZSH_ESSEMBEH_PREFIX="%{$fg[yellow]%}$(echo $SSH_CONNECTION | awk '{print $1}')%{$reset_color%}"
	# use red color to highlight a remote connection

fi

local ZSH1_ESSEMBEH_PREFIX="localhost"
if [[ -n "$SSH_CONNECTION" ]]; then
	# display the source address if connected via ssh
	ZSH1_ESSEMBEH_PREFIX="$(echo $SSH_CONNECTION | awk '{print $1}')"
	# use red color to highlight a remote connection

fi
# PROMPT='${ZSH_ESSEMBEH_PREFIX}%{$fg[$ZSH_ESSEMBEH_COLOR]%}%n@%m%{$reset_color%}:%{%B$fg[yellow]%}%~%{$reset_color%b%} '
# RPROMPT="%(?..%{$fg[red]%}%?%{$reset_color%})"



case $TERM in
  xterm*)
    PR_TITLEBAR=$'%{\e]0;%n@$ZSH1_ESSEMBEH_PREFIX  \a%}'
    ;;
  *)
    PR_TITLEBAR=""
    ;;
esac

PROMPT=$'${(e)PR_TITLEBAR}%{\e[0;30m%}%B┌─[%b%{\e[0m%}%{\e[0;36m%}%n%{\e[1;30m%}@\e[0;33m%}${ZSH_ESSEMBEH_PREFIX}%{\e[0m%}%{\e[0;30m%}%B]%b%{\e[0m%}%b%{\e[0;30m%}%B[%b%{\e[0;37m%}%~%{\e[0;30m%}%B]%b%{\e[0m%}
%{\e[0;30m%}%B└─%B[%{\e[0;35;5m%}$%{\e[0;30m%}%B]>%{\e[0m%}%b '
PS2=$' \e[0;30m%}%B>%{\e[0m%}%b '
RPROMPT=$'%{\e[0;30m%}%B[%b%{\e[0;33m%}'%D{"%H:%M"}%b$'%{\e[0;30m%}%B]%b%{\e[0m%}%{\e[0;30m%}%B[%b%{\e[0;33m%}'%D{"%d.%m"}%b$'%{\e[0;30m%}%B]%b%{\e[0m%}%{\e[0;30m%}%B[%b%{\e[0;33m%}'%D{"%A"}%b$'%{\e[0;30m%}%B]%b%{\e[0m%}'
#%{$fg[yellow]%}[$(echo $SSH_CONNECTION | awk '{print $0}')]

# %{$fg[yellow]%}[$(echo $SSH_CONNECTION | awk "{print $0}")]
