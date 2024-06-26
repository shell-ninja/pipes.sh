#!/usr/bin/env bash

orange="\x1b[38;5;214m"
green="\e[1;32m"
end="\e[1;0m"
action="[${green} ACTION ${end}]"

clear

printf "${action} - ${orange}Installing the pipes.sh. It may aks for your root password.${end}\n" && sleep 1

# cloning the repo
git clone --depth=1 https://github.com/me-js-bro/pipes.sh.git "$HOME/.pipes.sh"

if [[ -d ".pipes.sh" ]]; then
    cd "$HOME/.pipes.sh"
    sudo make install
fi

if [[ -f "/usr/local/bin/pipes.sh" ]]; then
    printf "Installed successfully. Now run pipes.sh in your terminal and you will get this...\n"
    pipes.sh
fi