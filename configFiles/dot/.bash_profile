
#figlet -f poison -c "pthiruna"
export ANT_HOME=/usr/local/opt/ant
export PYENV_ROOT=/usr/local/bin/pyenv
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export GRADLE_USER_HOME=~/.gradle
#export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_HOME=/Users/pthirunavukkarasu/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/pthirunavukkarasu/Library/Android/sdk
export ANDROID_AVD_HOME=/Users/pthirunavukkarasu/.android/avd
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home
export SDKMAN_DIR=/Users/pthirunavukkarasu/Softwares/sdkman
#export PATH=/Users/pthirunavukkarasu/anaconda3/bin/python:$PATH
#export PATH=$HOME/.jenv/bin:$PATH
#export PATH=$HOME/usr/local/bin/pyenv:$PATH
export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/bin:$PATH
export PATH=$JAVA_HOME/bin:$PATH
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"
#Alias
alias  vim=nvim
alias code=code-insiders
alias chrome="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"
alias clx="mssql -s d40win01.p2pcredit.local -u api_user -p Password23 -d collectionStrategy -e"
alias lm="itermocil lm"
# added by Anaconda3 5.0.0 installer
source /usr/local/opt/nvm/nvm.sh
source "/Users/pthirunavukkarasu/Softwares/sdkman/bin/sdkman-init.sh"
#export PATH="/Users/pthirunavukkarasu/anaconda3/bin:$PATH"
# Git alias
alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gau='git add --update'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log --graph --oneline'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
alias gld='git log --pretty=format:"%C(yellow)%h\\ %C(green)%ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short
--graph'
alias gls='git log --pretty=format:"%C(green)%h\\ %C(yellow)[%ad]%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate
--date=relative'


# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

# to help sublimelinter etc with finding my PATHS
case $- in
   *i*) source ~/.extra
esac

# generic colouriser
GRC=`which grc`
if [ "$TERM" != dumb ] && [ -n "$GRC" ]
    then
        alias colourify="$GRC -es --colour=auto"
        alias configure='colourify ./configure'
        for app in {diff,make,gcc,g++,ping,traceroute}; do
            alias "$app"='colourify '$app
    done
fi

# highlighting inside manpages and elsewhere
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

##
## gotta tune that bash_history…
##

# Enable history expansion with space
# E.g. typing !!<space> will replace the !! with your last command
bind Space:magic-space

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
export HISTTIMEFORMAT='%F %T '

# keep history up to date, across sessions, in realtime
#  http://unix.stackexchange.com/a/48113
export HISTCONTROL="erasedups:ignoreboth"       # no duplicate entries
export HISTSIZE=100000                          # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE                   # big big history
type shopt &> /dev/null && shopt -s histappend  # append to history, don't overwrite it

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Save multi-line commands as one command
shopt -s cmdhist

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# ^ the only downside with this is [up] on the readline will go over all history not just this bash session.



##
## hooking in other apps…
##
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"



# z beats cd most of the time. `brew install z`
zpath="$(brew --prefix)/etc/profile.d/z.sh"
[ -s $zpath ] && source $zpath

# init z https://github.com/rupa/z
# . ~/z/z.sh

##
## Completion…
##

#if [[ -n "$ZSH_VERSION" ]]; then  # quit now if in zsh
#    return 1 2> /dev/null || exit 1;
#fi;

## bash completion.
#if  which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
#    source "$(brew --prefix)/share/bash-completion/bash_completion";
#elif [ -f /etc/bash_completion ]; then
#    source /etc/bash_completion;
#fi;

## homebrew completion
#if  which brew > /dev/null; then
#    source "$(brew --prefix)/etc/bash_completion.d/brew"
#fi;

## hub completion
#if  which hub > /dev/null; then
#    source "$(brew --prefix)/etc/bash_completion.d/hub.bash_completion.sh";
#fi;

## Enable tab completion for `g` by marking it as an alias for `git`
#if type __git_complete &> /dev/null; then
#    __git_complete g __git_main
#fi;

## Add tab completion for `defaults read|write NSGlobalDomain`
## You could just use `-g` instead, but I like being explicit
#complete -W "NSGlobalDomain" defaults


###
### better `cd`'ing
###

## Case-insensitive globbing (used in pathname expansion)
## shopt -s nocaseglob;

## Correct spelling errors in arguments supplied to cd
#shopt -s cdspell;

## Autocorrect on directory names to match a glob.
#shopt -s dirspell 2> /dev/null

## Turn on recursive globbing (enables ** to recurse all directories)
#shopt -s globstar 2> /dev/null
