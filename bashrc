alias gl="git log --oneline --decorate"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

function pip-user-install () {
  pip install -U --break-system-packages $*
}


export PATH=/home/aey/.cargo/bin:/home/aey/.local/bin:$PATH
