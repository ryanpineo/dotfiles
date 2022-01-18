dots=${PWD}


function install() {
    src="$1"
    dest="$2"

    echo "installing $src => $dest"
    if [ -a "$dest" ]; then
        if [ -L "$dest" ]; then
            rm "$dest"
        else
            mkdir -p "$HOME/dotarchives"
            mv "$dest" "$HOME/dotarchives"
        fi
    fi

    ln -sF "$src" "$dest"
}

install "$dots/autorandr" "$HOME/.config/autorandr"
install "$dots/bin" "$HOME/bin"
install "$dots/bspwm" "$HOME/.bspwm"
install "$dots/ctags" "$HOME/.ctags"
install "$dots/dir_colors" "$HOME/.dir_colors"
install "$dots/dunst" "$HOME/.config/dunst"
install "$dots/fonts" "$HOME/.fonts"
install "$dots/git/git_template" "$HOME/.git_template"
install "$dots/git/gitconfig" "$HOME/.gitconfig"
install "$dots/git/githelpers" "$HOME/.githelpers"
install "$dots/git/gitignore_global" "$HOME/.gitignore_global"
install "$dots/polybar" "$HOME/.config/polybar"
install "$dots/sxhkd" "$HOME/.sxhkd"
install "$dots/termiterc" "$HOME/.termiterc"
install "$dots/tmux" "$HOME/.tmux"
install "$dots/tmux/tmux.conf" "$HOME/.tmux.conf"
install "$dots/vim" "$HOME/.vim"
install "$dots/nvim" "$HOME/.config/nvim"
install "$dots/x11/xinitrc" "$HOME/.xinitrc"
install "$dots/x11/xmodmap" "$HOME/.xmodmap"
install "$dots/zsh/zlogin" "$HOME/.zlogin"
install "$dots/zsh/zsh_themes" "$HOME/.zsh_themes"
install "$dots/zsh/zshenv" "$HOME/.zshenv"
install "$dots/zsh/zshrc" "$HOME/.zshrc"
