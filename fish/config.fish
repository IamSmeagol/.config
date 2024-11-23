# Vi mode that lets me accept suggestion with control + f like default fish
set -g fish_key_bindings fish_vi_key_bindings
bind -M insert \cf accept-autosuggestion
if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
