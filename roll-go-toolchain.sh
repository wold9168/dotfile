#!/bin/bash

packages=(
    "golang.org/x/tools/gopls@latest"
    "github.com/go-delve/delve/cmd/dlv@latest"
    "-tags most github.com/xo/usql@latest"
)

BOLD_WHITE_ON_BLUE="\033[1;37;44m"
RESET="\033[0m"

for pkg in "${packages[@]}"; do
    echo -e "${BOLD_WHITE_ON_BLUE}${pkg}${RESET}"
    go install ${pkg}
done
