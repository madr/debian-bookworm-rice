# Moridin

Rice based on Sway and Waybar, made on Debian 12.

## Computer setup

Install Debian 12 bookworm from netinst ISO on USB stick. 

- Make sure to encrypt the hard drive!
- Enable `contrib` and `non-free` repositories.

If suspend by laptop lid does not work, add `init_on_alloc=0` and `intel_iommu=off` kernel parameters in `/etc/default/grub` and run `update-grub2`.

## dotfiles installation

```
https://github.com/madr/debian-bookworm-rice ~/.config
echo ". ~/.config/bashrc" >> ~/.bashrc
```

## Install packages

Essential packages:

```sh
apt install neovim foot light sway swaylock swayidle seatd waybar imv kanshi nmtui network-manager git fuzzel bash-completion grimshot otf-font-awesome fonts-ubuntu wl-clipboard entr fonts-freefont-otf
```

Additional packages:

```ssh
apt install tmux podman podman-compose podman-docker ranger openssh-server flatpak
```

## Install ASDF (elixir, nodejs) and pyenv

These are installed by cloning their git repos and sourcing them in
`.bashrc` (done in a later step)

```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
```

## Install Helix

Helix is built from source, since no Debian binary or PPA is available.The most recent version that works with the Debian provided `rustc` is version `22.12`.

Install rust toolchain as root:

```
apt install cargo
```

Based on the instructions here:
https://docs.helix-editor.com/install.html#building-from-source

.. install Helix.

```
git clone https://github.com/helix-editor/helix ~/.helix
cd ~/.helix
git checkout 22.12
cargo install --path helix-term --locked
```

Also install Language servers.

## Install Flatpak apps

First, add Flathub remote:

```
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

To have a GUI to manage app authorization, use Flatseal: `flatpak install flatseal`.

Then, install apps.

```
flatpak install firefox
flatpak install pycharm
flatpak install onlyoffice
flatpak install keepass
flatpak install syncthing
...
```


