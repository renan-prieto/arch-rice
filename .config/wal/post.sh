#!/bin/sh

# Atualiza instâncias abertas do Neovim
if command -v nvim >/dev/null 2>&1; then
    for server in $(nvim --server-list 2>/dev/null); do
        nvim --server "$server" --remote-send '<C-\><C-N>:lua require("pywal").setup()<CR>' 2>/dev/null
    done
fi
