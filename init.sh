#!/bin/bash

set -e

# script path
SCRIPT_PATH="$(realpath "${BASH_SOURCE[0]}")"
SCRIPT_DIR="$(dirname "${SCRIPT_PATH}")"

# cleanup and init operations
echo "creating new directories and files for lsp..."
mkdir "$SCRIPT_DIR"/packages/{data,bin} -p
mkdir "$SCRIPT_DIR"/lsp -p
touch "$SCRIPT_DIR/plugin/lsp_enable.lua"
