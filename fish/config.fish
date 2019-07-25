
# General
set -x PATH $PATH ~/.local/bin

# Desktop
set -x PATH $PATH "~/Local/clion-1.2.4"
set -x PATH $PATH "~/Local/sublime_text_3"
set -x PATH $PATH "~/repo/cquery/cquery/build/release/bin"

# Rust
set -x PATH $PATH "~/.cargo/bin"

# caps lock navigation
# xmodmap ".xmodmap"
xcape -e "Mode_switch=Escape"

#Greeting
set -x fish_greeting ""
set -x VIRTUALFISH_HOME "$HOME/.config/virtualfish"
eval (python3 -m virtualfish)
