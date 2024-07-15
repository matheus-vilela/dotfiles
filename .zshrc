export ZSH="/Users/vilela/.oh-my-zsh"
ZSH_THEME="spaceship"
#ZSH_THEME="dracula-pro"

# aliases
alias zs="source ~/.zshrc"
alias zsc="code ~/.zshrc"
alias ne="echo $NODE_ENV"
alias cls="clear"

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="true"

#Plugins
plugins=(git)

export PATH=/opt/homebrew/bin:$PATH

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

######### SPACESHIP CUSTOM CONFIGS

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Node section
  docker	# DOCKER 
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
  time          # Time stamps section
  aws           # Amazon Web Services section
  gcloud        # Google Cloud Platform section			
)



SPACESHIP_USER_SHOW=always
# SPACESHIP_CHAR_SYMBOL="🔥 "
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

### Enviroment Variables

export PATH=$PATH:/usr/local/opt/node@14/bin

######### nvm settings

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

######### Android Studio settings


export PATH=$PATH:~/Gradle/gradle-6.0/bin
export PATH=$PATH:/opt/gradle/gradle-6.0/bin

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin
#export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/Home"


export ANDROID_HOME=/Users/vilela/Android/Sdk
#export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export adb=/Users/vilela/Android/Sdk/platform-tools/adb
export PATH="$PATH:/Users/vilela/Android/Sdk/platform-tools"


#export ANDROID_SDK_ROOT=/Users/vilela/Android/Sdk

#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform-tools


######### Added by Zinit's installer

if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/vilela/Dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vilela/Dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/vilela/Dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vilela/Dev/google-cloud-sdk/completion.zsh.inc'; fi
