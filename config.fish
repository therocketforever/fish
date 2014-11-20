if test -e ~/.homebrew/etc/autojump.fish
  . ~/.homebrew/etc/autojump.fish
end

set -x PATH ~/.homebrew/bin ~/.homebrew/sbin ~/.rbenv/bin ~/.rbenv/shims $PATH

set -gx RBENV_ROOT ~/.rbenv
status --is-interactive; and . (rbenv init -|psub)

rbenv rehash >/dev/null ^&1

test -s /Users/kaze/.nvm-fish/nvm.fish; and source /Users/kaze/.nvm-fish/nvm.fish

# Paths to your tackle
set fish_path ~/.tackle ~/.tacklebox

# Theme
#set fish_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set fish_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set fish_plugins python extract

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

