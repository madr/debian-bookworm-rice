alias gl="git log --oneline --decorate"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

function pip-user-install () {
  pip install -U --break-system-packages $*
}

export XDG_SCREENSHOTS_DIR="/home/aey/screenshots"
export PATH=/home/aey/.cargo/bin:/home/aey/.local/bin:$PATH
export PATH=/home/aey/.asdf/installs/rust/1.73.0/bin:$PATH

alias ll='ls -GAFho'
alias imv='imv-wayland'
alias gap="git add -p"
alias gcane='git commit --amend --no-edit'
alias glo='git log --oneline --decorate'
alias gf="git fetch"
alias gm='git merge origin/$(git rev-parse --abbrev-ref HEAD)'
alias gmom="git merge origin/master"
alias gmsot='git merge --strategy-option theirs'
alias gp='git push origin HEAD'
alias grh='git reset --hard'
alias gri="git rebase -i"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gscs="git show --compact-summary"
alias gss="git status"
alias gd='git diff'
alias gs='git switch'
alias gs-='git switch -'
alias gsc='git switch -c'
alias gsmu='git submodule update --remote --merge'

alias glenn='gp'
alias glass='gb'

alias fucking='sudo'
alias effing='fucking'

alias vadre="curl -4 http://wttr.in/Östersund"
alias vedreh="curl -4 http://wttr.in/Stockholm"
alias vädret="curl -4 http://wttr.in/Borlänge"
alias whatsmyip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
alias whois='dig -t ANY'

alias ssha='eval "$(ssh-agent -s)" && ssh-add'

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

SWAY_CURSOR_THEME=Breeze_Snow

PS1='\u:\W $(__git_ps1 "(%s)")\n╚═\$ '

#echo "{pipes | tty-clock | cmatrix | hollywood | sl | figlet | toilet | cava}"
eval "$(pyenv virtualenv-init -)"

export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"
