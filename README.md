# Dotfiles

Managed with GNU Stow. Each top-level folder is a "package" mirroring
the structure of $HOME (e.g. `hypr/.config/hypr/...`).

## Setup on a new machine

    sudo pacman -S stow
    git clone git@github.com:<username>/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    stow */

If a target file already exists and conflicts:

    stow --adopt <package>     # pulls existing file into repo instead of erroring
    git diff                   # check what changed before committing

## Adding a new app/config

    mkdir -p ~/dotfiles/<app>/.config
    mv ~/.config/<app> ~/dotfiles/<app>/.config/
    cd ~/dotfiles
    stow <app>

## Removing a package (unlink without deleting repo copy)

    stow -D <app>

## Re-linking after edits to structure

    stow -R <app>

## Pushing changes

    cd ~/dotfiles
    git add .
    git commit -m "update configs"
    git push

## Pulling changes on another machine

    cd ~/dotfiles
    git pull
    stow -R */

## Notes
- Never stow: .ssh, .gnupg, pulse cookies, browser profiles, anything with secrets.
- .gitignore excludes caches/logs/history.
- Current packages: hypr, waybar, wofi, kitty, nvim, wlogout, swaync, zsh, tmux
