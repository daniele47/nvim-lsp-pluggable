# nvim-lsp-pluggable
provide extra code to allow plugging in lsp functionality into neovim

# installation
```sh
INSTALL_PATH="$HOME/.local/share/nvim-lsp-pluggable"
NVIM_PATH="$HOME/.local/share/nvim/site"
if [[ -e "$NVIM_PATH" ]]; then
   echo "path already exists!"
else
  ! [[ -e "$INSTALL_PATH" ]] && git clone https://github.com/daniele47/nvim-lsp-pluggable "$INSTALL_PATH"
  mkdir -p "$(dirname "$NVIM_PATH")" && ln -s "$INSTALL_PATH" "$NVIM_PATH"
  "$NVIM_PATH/init.sh"
  echo "successful installation!"
fi
```

# uninstallation
```sh
rm -rf "$HOME/.local/share/nvim/site"
read -rp "Type PURGE to completely purge the installation: " answer
[[ "$answer" == PURGE ]] && rm -rf "$HOME/.local/share/nvim-lsp-pluggable"
```

# usage

- install lsp packages in `package/data`
- link lsp packages to `package/bin`, to have it be included in neovim PATH
- for each lsp, enable it in `plugin/lsp_enable.lua`
- if lsp config file in `lsp` directory is missing, download it from [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
