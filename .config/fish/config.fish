if status is-interactive
    # Commands to run in interactive sessions can go here
end

# start theme
starship init fish | source

# add local bins in $PATH
set PATH $HOME/.local/bin $HOME/.cargo/bin $PATH
alias cat="bat --style=auto"
alias ls="exa --icons"
alias docker_clear="docker system prune && docker rmi (docker images -a -q) && docker rm (docker ps -a -q)"

#source /opt/asdf-vm/asdf.fish
source ~/.asdf/asdf.fish

#set EXPO_PACKAGER_PROXY_URL 'http://192.168.0.8:19000'
alias p=pnpm
alias px='pnpm dlx'

#fish_config theme choose "Rosé Pine Moon"

# pnpm
set -gx PNPM_HOME "/home/hallexcosta/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

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

set GIGZ_SERVER 165.227.127.107
set NEOPLAN_SERVER 143.198.22.93

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
