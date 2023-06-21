# Variables
PATH=/usr/local/texlive/2022/bin/x86_64-linux:$HOME/bin:/usr/local/bin:$PATH

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

PATH="$HOME/projects/linux-scripts:$PATH"

export PATH
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export NEW_SOL="$HOME/Templates/template.cpp"
export GEM_HOME="$HOME/.gems/"
export PATH="$HOME/.gems/bin:$PATH"

# Aliases
alias rg=ranger
alias mydotfiles="cd $HOME/projects/dotfiles"
alias when="calcurse -Q"
alias open_in_nomacs="flatpak run org.nomacs.ImageLounge . > /dev/null 2> /dev/null"
alias newsol="cp $NEW_SOL"

### ZSH HOME
export ZSH=$HOME/.zsh

### ---- PLUGINS & THEMES -----------------------------------
source $ZSH/themes/spaceship-prompt/spaceship.zsh-theme
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
HISTFILE=~/.zsh_history
bindkey -v
fastfetch

