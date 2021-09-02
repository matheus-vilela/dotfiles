export ZSH="/home/vilela/.oh-my-zsh"
ZSH_THEME="spaceship"
#ZSH_THEME="dracula-pro"
# aliases
alias zs="source ~/.zshrc"
alias zsc="code ~/.zshrc"
alias ne="echo $NODE_ENV"

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="true"

#Plugins
plugins=(
  git 
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

#zsh-syntax-highlighting zsh-autosuggestions

######### SPACESHIP CUSTOM CONFIGS

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Node section
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
#SPACESHIP_CHAR_SYMBOL="🔥 "
#SPACESHIP_CHAR_SYMBOL="❯ "
SPACESHIP_CHAR_SYMBOL="⟹ "
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_PROMPT_ADD_NEWLINE=true
#SPACESHIP_CHAR_COLOR_SUCCESS=green
#SPACESHIP_CHAR_COLOR_FAILURE=green
#SPACESHIP_USER_COLOR=yellow
SPACESHIP_EXIT_CODE_COLOR="#FF80BF"


######### env vars

export NODE_ENV="development"



######### nvm settings

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



######### Android Studio settings

export JAVA_HOME=/lib/jvm/java-11-openjdk-amd64
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:~/android-studio/bin

######### Added by Zinit's installer

if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions