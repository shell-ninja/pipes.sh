#!/usr/bin/env bash

orange="\x1b[38;5;214m"
green="\e[1;32m"
end="\e[1;0m"
action="[${green} ACTION ${end}]"

clear

printf "${action} - Installing the pipes.sh.\n" && sleep 1

# cloning the repo
git clone --depth=1 https://github.com/me-js-bro/pipes.sh.git "$HOME/.pipes.sh"

if [[ -d "$HOME/.pipes.sh" ]]; then
    cd "$HOME/.pipes.sh"
    make install
fi

sleep 1 && clear

if [[ -f "/usr/local/bin/pipes.sh" || -f "$HOME/.local/bin/pipes.sh" ]]; then
    printf "${orange}Installed successfully. Now run pipes.sh in your terminal and you will get this${end}\n"
    sleep 2
    pipes.sh
fi