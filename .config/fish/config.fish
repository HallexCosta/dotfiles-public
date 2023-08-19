if status is-interactive
    # Commands to run in interactive sessions can go here
end

# start theme
starship init fish | source

# add local bins in $PATH
set PATH $HOME/.local/bin $HOME/.cargo/bin $PATH
alias cat="bat --style=auto"
alias ls="exa --icons"
alias docker_clear="docker rmi (docker images -a -q) && docker rm (docker ps -a -q)"

source /opt/asdf-vm/asdf.fish

#set EXPO_PACKAGER_PROXY_URL 'http://192.168.0.8:19000'
alias p=pnpm
alias px='pnpm exec'

fish_config theme choose "Rosé Pine Moon"

# pnpm
set -gx PNPM_HOME "/home/hallexcosta/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# load phpbrew to versionate php
source ~/.phpbrew/shell/phpbrew.fish

function dup
  docker compose up -d $argv[1]
end
function dwn
  docker compose down
end
function ddown
  docker compose down
end
function dps
  docker ps
end
function de
  docker exec -it $argv[1] /bin/bash
end
