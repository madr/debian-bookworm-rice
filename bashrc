alias gl="git log --oneline --decorate"

#export XDG_DATA_DIRS="/home/aey/.local/share/flatpak/exports/share"

. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

function pip-user-install () {
  pip install -U --break-system-packages $*
}


export PATH=/home/aey/.cargo/bin:/home/aey/.local/bin:$PATH
