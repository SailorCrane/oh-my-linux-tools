# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# zsh exit时执行 ZDODIR 中的.zlogout
# 必须是export的ZDODIR
#export ZDODIR=$HOME
#export ZDODIR=$(readlink -f ~)
#alias -s tar.gz="tar zxvf"  # tar.gz 的解压缩命令: tar zxvf, 测试得知zsh不支持双后缀.


# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# build_prompt() {
#     RETVAL=$?
#     prompt_status
#     prompt_context
#     prompt_dir
#     prompt_git
#     prompt_svn
#     prompt_end
# }
#=================== svn prompt =====================

ZSH_THEME="agnoster"            # 字体乱码解决, 终端选用powerline字体即可( 原先是monospace )
ZSH_THEME="robbyrussell"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="af-magic"            # 看别人的命令输出间, 有分割线, 我的没有, 所以不用.

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"   # 大小写敏感.

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# enable plugins
plugins=(git
         svn
         web-search
         encode64
         wd
         autojump
         urltools
         sudo
         zsh-syntax-highlighting
         command-not-found
         golang
         git-flow-avh
         git-flow-aliases
         #thefuck
         )

source  $ZSH/oh-my-zsh.sh

# common-shell utils
for i in ~/.common-shell-utils/*sh ; do
    source $i
done

# zsh only utils
for i in ~/.zsh-utils/*sh ; do
    source $i
done


bindkey \^U backward-kill-line  # ctrl + u 不删除整行, 仅仅删除到行首.

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
