export LC_ALL="en_US.UTF-8"
export LANG="en_US"

default_username='williamharrison'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ll="ls -l"
alias la="ls -la"
alias v="vim -p"
alias g="git"

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM=xterm-256color
fi
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
#234,161,81,118,208,135
BLACK=$(tput setaf 234)
RED=$(tput setaf 161)
GREEN=$(tput setaf 118)
YELLOW=$(tput setaf 208)
BLUE=$(tput setaf 81)
PURPLE=$(tput setaf 135)
AQUA=$(tput setaf 81)
WHITE=$(tput setaf 15)
BOLD=$(tput bold)
RESET=$(tput sgr0)


function git_info() {
	# check if we're in a git repo
	git rev-parse --is-inside-work-tree &>/dev/null || return

	# quickest check for what branch we're on
	branch=$(git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')

	# check if it's dirty (via github.com/sindresorhus/pure)
	dirty=$(git diff --quiet --ignore-submodules HEAD &>/dev/null; [ $? -eq 1 ]&& echo -e "*")

	echo $WHITE" on "$PURPLE$branch$dirty
}

# Only show username/host if not default
function usernamehost() {
	if [ $USER != "$default_username" ]; then echo "${RED}$USER ${WHITE}at ${RED}$HOSTNAME $WHITEin "; fi
}

PS1="\[\e]2;$PWD\[\a\]\[\e]1;\]$(basename "$(dirname "$PWD")")/\W\[\a\]${BOLD}\n\[$PURPLE\]\d \t\n\$(usernamehost)\[$YELLOW\]\w\$(git_info)\[$GREEN\]\n\$ \[$RESET\]"



