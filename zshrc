export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
DEFAULT_USER="$USER"

## ----------  powerlevel9k settings
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir virtualenv anaconda vcs dir_writable vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator battery command_execution_time time)

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'

POWERLEVEL9K_VI_INSERT_MODE_STRING='I'
POWERLEVEL9K_VI_COMMAND_MODE_STRING='N'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='green'

POWERLEVEL9K_STATUS_CROSS=true

POWERLEVEL9K_TIME_ICON=''
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

POWERLEVEL9K_BATTERY_ICON=''
## ----------


# alias
alias typora="open -a typora"
alias hotel="echo 'trivago'; open http://www.trivago.com/"
alias cls="clear"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(
  git z extract osx vi-mode cp
)
if [ -z "$_zsh_custom_scripts_loaded" ]; then
    _zsh_custom_scripts_loaded=1
    plugins+=(zsh-autosuggestions zsh-syntax-highlighting)
fi

# load all plugins
source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
# prevent auto-suggestion hide because of solarize theme
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

