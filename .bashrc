
alias idea='/opt/idea-IC-222.4345.14/bin/idea.sh'
alias pycharm='/opt/pycharm-community-2022.3.1/bin/pycharm.sh'

alias ls='ls -p'
alias vi='vi -p'
alias st='git st'

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


function today() {
TODAY_DIR="$HOME/today/"
LOOK_BACK=1
  #echo "date -${LOOK_BACK}d '+%Y%m%d'"
  #echo "date -d"$LOOKBACK day" '+%Y%m%d'"
  #LOOKBACK=1
  #PREVIOUS_DATE=$(date -d-${LOOK_BACK} day '+%Y%m%d')
  #PREVIOUS_DATE=$(date -d"$LOOKBACK day" '+%Y%m%d')
  CUR_DATE=$(date '+%Y%m%d')
  echo PREVIOUS_DATE: $PREVIOUS_DATE
  echo CUR_DATE: $CUR_DATE
  vi -p $TODAY_DIR$CUR_DATE
}
