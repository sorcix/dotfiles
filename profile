export GOPATH=$HOME/Go
export PATH=$PATH:$HOME/.bin:$GOPATH/bin

export EDITOR=vim
export PAGER=less
export BROWSER=firefox
export TERM=xterm-256color
export CHEF_ENV=sandbox

#source $HOME/.ssh-agent > /dev/null

alias digs='dig +short'
alias digx='dig +short -x'
alias ci='curl -I'
alias cil='curl -IL'
alias gs='git status'
alias gd='git diff'
alias gp='git push'

alias prod='export CHEF_ENV=production'
alias sandbox='export CHEF_ENV=sandbox'
alias knifeprod='CHEF_ENV=production knife'

# Local chef environment
if [ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]; do
	source /usr/local/opt/chruby/share/chruby/chruby.sh
	source /usr/local/opt/chruby/share/chruby/auto.sh
	chruby 2.2.2
fi
