# nvim-lsp-pluggable
provide extra code to allow plugging in lsp functionality into neovim

# installation
```sh
git clone https://github.com/daniele47/nvim-lsp-pluggable "$HOME/.local/share/nvim/site"
```

# uninstallation
```sh
rm -rf "$HOME/.local/share/nvim/site"
```

# usage

- install lsp packages in `package/data`
- link lsp packages to `package/bin`, to have it be included in neovim PATH
- for each lsp, enable it in `plugin/lsp_enable.lua`
- if lsp config file in `lsp` directory is missing, download it from [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
