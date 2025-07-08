#PATH
set --export ANDROID $HOME/Library/Android;
set --export ANDROID_HOME $ANDROID/sdk;
set -gx PATH $ANDROID_HOME/tools $PATH;
set -gx PATH $ANDROID_HOME/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;
set -gx PATH $ANDROID_HOME/emulator $PATH
set -gx PATH "$PATH:$HOME/.rvm/bin"
eval "$(/opt/homebrew/bin/brew shellenv)"

set --export JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home;
set -gx PATH $JAVA_HOME/bin $PATH;

set -gx LDFLAGS "-L/opt/homebrew/opt/jpeg/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/jpeg/include"


set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/jpeg/lib/pkgconfig"

set -gx LDFLAGS "-L/opt/homebrew/opt/postgresql@16/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/postgresql@16/include"
set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/postgresql@16/lib/pkgconfig"
starship init fish | source

# pnpm
set -gx PNPM_HOME "/Users/phongnguyen/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

zoxide init fish | source
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Git aliases
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gl="git log --oneline"
alias gps="git push"
alias gpl="git pull"
alias gs="git status"
alias gst="git stash"
alias gsw="git switch"

set --universal nvm_default_version v22.17.0

#rvm
bass source $HOME/.rvm/scripts/rvm

set -gx NVM_DIR "$HOME/.nvm"



alias claude="/Users/phongnguyen/.claude/local/claude"
