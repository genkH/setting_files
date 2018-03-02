# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias SC='vi ~/.bashrc; source ~/.bashrc'
alias la='ls -a --color'
alias ll='ls -la --color'
alias cp='cp -i'
alias rm='rm -i'
alias linmerge='python /home/harada/linmerge/linmerge.py'

# prompt
#export PS1="\e[33m[\e[35;1m\u\e[33m@\e[31;1m\h\e[33m \W]$\e[0m "
#export PS1="\e[33;1m[\e[35;1m\u\e[0m@\e[33;1mminerva\e[33;1m \W]$\e[0m "


