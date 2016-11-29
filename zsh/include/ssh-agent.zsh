###############
## tmux-friendly SSH agent
###############

if [ -z "$SSH_AUTH_SOCK" ]; then
	mkdir -p "$HOME/.ssh"
	export SSH_AUTH_SOCK="$HOME/.ssh/.auth_socket"
fi

if [ ! -S "$SSH_AUTH_SOCK" ]; then
	`ssh-agent -a $SSH_AUTH_SOCK` > /dev/null 2>&1
	echo $SSH_AGENT_PID > $HOME/.ssh/.auth_pid
fi

if [ -z "$SSH_AGENT_PID" ]; then
	export SSH_AGENT_PID=`cat $HOME/.ssh/.auth_pid`
fi
