# Autojump!
if test -e ~/.autojump/etc/profile.d/autojump.fish
    . ~/.autojump/etc/profile.d/autojump.fish
end

# Environment Variables
set -x PATH $HOME/.rbenv/bin $HOME/.rbenv/shims /usr/local/bin /usr/local/sbin $PATH
set -gx RBENV_ROOT ~/.rbenv
set -gx VAGRANT_DEFAULT_PROVIDER vmware_fusion
set -gx DOCKER_HOST tcp://localhost:2375

# VMWare Fusion stuff
#if test -e "/Applications/VMware Fusion.app/Contents/Library"
#  set -gx PATH "/Applications/VMware Fusion.app/Contents/Library" $PATH
#end

#dvm stuffs
#eval (dvm env)

# Rbenv Setup
status --is-interactive; and . (rbenv init -|psub)
rbenv rehash >/dev/null ^&1

# NPM
#set -x PATH /usr/local/share/npm/bin $PATH

# Colorize Grep
set -gx GREP_OPTIONS --color=auto
set -gx GREP_COLOR '97;45'
