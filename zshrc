# If you come from bash you might have to change your $PATH.
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

export PATH

export EDITOR=/usr/bin/vim

# Aliases
new_sol(){
    cp "$HOME/Templates/template.cpp" $1.cpp
}

### ZSH HOME
export ZSH=$HOME/.zsh

### ---- PLUGINS & THEMES -----------------------------------
source $ZSH/themes/spaceship-prompt/spaceship.zsh-theme
#
#### --- Spaceship Config ------------------------------------
#
SPACESHIP_PROMPT_ORDER=(
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
