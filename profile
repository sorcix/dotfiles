export GOPATH=$HOME/Go
export PATH=$PATH:$HOME/.bin:$GOPATH/bin

export EDITOR=vim
export PAGER=less
export BROWSER=chrome
export TERM=xterm-256color

#source $HOME/.ssh-agent > /dev/null

alias digs='dig +short'
alias digx='dig +short -x'
alias ci='curl -I'
alias cil='curl -IL'

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

if [ -f ~/.terraform ]; then
	source ~/.terraform
fi

# Local chef environment
if [ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]; then
	export CHEF_ENV=production
	source /usr/local/opt/chruby/share/chruby/chruby.sh
	source /usr/local/opt/chruby/share/chruby/auto.sh
	chruby 2.2.2
fi
