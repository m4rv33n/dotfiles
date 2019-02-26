# dotfiles

These are my dotfiles, available for everybody (especially me).

Feel free to use them as template for your own dotfiles, but remember: **Those are my dotfiles. Be creative yourself. You don't want my crap, you want your own.**

## Installation

```
git clone --recursive --no-checkout https://github.com/m4rv33n/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git show HEAD:scripts/bootstrap | bash
scripts/install
```

## Directories

- `gpg/` - GPG configuration
- `graphical/` - Configuration for graphical tools
- `local/` - Local configuration, excluded from git
- `misc/` - Single configuration files
- `scripts/` - Helper scripts, not supposed to be added to $PATH
- `systemd/` - systemd user units
- `vim/` - vim configuration and plugin manager
- `zsh/` - zsh configuration and plugin manager

## Stuff

`.zshenv` → [`.zprofile` if login] → [`.zshrc` if interactive] → [`.zlogin` if login] → [session] → [`.zlogout` sometimes]`


