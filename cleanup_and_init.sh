#!/bin/bash

set -e

# script path
SCRIPT_PATH="$(realpath "${BASH_SOURCE[0]}")"
SCRIPT_DIR="$(dirname "${SCRIPT_PATH}")"

# danger prompt to user
read -rp "this will cleanup all lsps installed, type CONFERM to proceed: " answer
[[ "$answer" != "CONFERM" ]] && exit 1

# cleanup and init operations
echo "cleaning up packages and configs..."
rm -rf "$SCRIPT_DIR/packages" "$SCRIPT_DIR/plugin/lsp_enable.lua"
echo "creating new directories and files for lsp..."
mkdir "$SCRIPT_DIR"/packages/{data,bin}/ -p
echo "-- write here your vim.lsp.enable(...) without worries: this file is ignored!" > "$SCRIPT_DIR/plugin/lsp_enable.lua"

# final message
echo "
INSTALLATION SUCCESSFULLY COMPLETED!

How to interact:
- install lsp packages in ./package/data
- link lsp packages to ./package/bin/, to have it be included in neovim PATH
- for each lsp, enable it in ./plugin/lsp_enable.lua
"
