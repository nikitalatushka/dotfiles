# ~/.zshrc - nikita@latushka.dev

###############################################################################
# Powerlevel 10K                                                              #
###############################################################################

# === source powerlevel10k ===
source ~/powerlevel10k/powerlevel10k.zsh-theme

# --- enable Powerlevel10k instant prompt ---
# Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- set alias for config wizard ---
# run `p10k configure` to edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# === source personal config files ===
#for config ($HOME/.zsh/*.zsh) source $config



# === add local binary to path ===
PATH=$PATH:~/bin
alias python=/usr/bin/python3


###############################################################################
# pyenv                                                                      #
###############################################################################

# === pyenv init configuration ===
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

plugin=(
  pyenv
)

eval "$(pyenv init --path)"
eval "$(pyenv init -)"


# === pyenv virtualenv configuration ===
eval "$(pyenv virtualenv-init -)"

# === add pipx to path ===
PATH=$PATH:/Users/latushna/Library/Python/3.9/bin

# === add pipenv to path ===
PATH=$PATH:/Users/latushna/.local/bin

###############################################################################
# Aliases                                                                     #
###############################################################################

# Easier navigation
alias ..="cd .." # Go up a directory
alias ...="cd ../.." # Go up 2 directories
alias ....="cd ../../.." # Go up 3 directories
alias .....="cd ../../../.." # Go up 4 directories
alias ~="cd ~" # Go directly to home directory
alias -- -="cd -" # Go to previous working directory

# List all files, excluding . and ..
alias la="ls -A"

# List all files in long format, excluding . and ..
alias lla="l -A"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"


