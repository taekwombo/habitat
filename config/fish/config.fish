fish_theme init

if set -q WT_SESSION
    set -x COLORTERM truecolor
end

set -x LS_COLORS 'di=38;5;4:no=0'

set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CACHE_HOME $HOME/.local/cache
set -x XDG_RUNTIME_HOME $HOME/.local/runtime

set -x CARGO_HOME $XDG_DATA_HOME/cargo
set -x RUSTUP_HOME $XDG_DATA_HOME/rustup

set -x NPM_CONFIG_PREFIX $XDG_CONFIG_HOME/npm
set -x NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/.npmrc
set -x NPM_CONFIG_CACHE $XDG_CACHE_HOME/npm

set -x PATH $CARGO_HOME/bin:$HOME/apps/nvim/bin:$NPM_CONFIG_PREFIX/bin $PATH

if test -f $HOME/profile.fish
    source $HOME/profile.fish
end
