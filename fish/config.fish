#PATH
set --export ANDROID $HOME/Library/Android;
set --export ANDROID_HOME $ANDROID/sdk;
set -gx PATH $ANDROID_HOME/tools $PATH;
set -gx PATH $ANDROID_HOME/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;
set -gx PATH $ANDROID_HOME/emulator $PATH
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
