# Variables

export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export GOPATH="$HOME/.go"
export GEM_HOME="$HOME/.gems/"
export LYNX_CFG="$HOME/.config/lynx/lynx.cfg"
export OPENER=xdg-open
# Language
export LANG=en_US.UTF-8
export LC_COLLATE=C.UTF-8
# ZSH HOME
export ZSH=$HOME/.zsh

PATH=$HOME/.local/texlive/2023/bin/x86_64-linux:$HOME/bin:/usr/local/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH="$HOME/projects/linux-scripts:$PATH"

if [ -d "/var/lib/flatpak/exports/bin" ] ; then
    PATH="/var/lib/flatpak/exports/bin:$PATH"
fi

# Paths for language-specific package management
PATH="$GEM_HOME/bin:$PATH"
PATH="/usr/bin/vendor_perl:$PATH"
PATH="$PATH:$GOPATH/bin"

# Make all changes to path before this line
export PATH

# Aliases
alias ll="exa -alh"
alias ls="exa --icons -a --group-directories-first"
alias mydotfiles="cd $HOME/projects/dotfiles"
alias when="calcurse -Q"
alias newsol="cp $HOME/Templates/template.cpp"
alias vim=nvim
alias vimwiki="nvim -c VimwikiIndex"

reboot_to_windows ()
{
    windows_title=$(grep -i windows /boot/grub/grub.cfg | cut -d "'" -f 2)
    sudo grub-reboot "$windows_title" && sudo reboot
}

lfcd () {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -print-last-dir "$@")"
}

### ---- PLUGINS & THEMES -----------------------------------
source $ZSH/themes/spaceship-prompt/spaceship.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#
#### --- Spaceship Config ------------------------------------
#
SPACESHIP_PROMPT_ORDER=(
venv
user          # Username section
dir           # Current directory section
host          # Hostname section
git           # Git section (git_branch + git_status)
hg            # Mercurial section (hg_branch  + hg_status)
exec_time     # Execution time
line_sep      # Line break
jobs          # Background jobs indicator
exit_code     # Exit code section
char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

# Final configurations
SAVEHIST=500
HISTFILE=~/.zsh/history
bindkey -v
fastfetch
