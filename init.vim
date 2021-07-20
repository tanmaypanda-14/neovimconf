source ~\AppData\Local\nvim\config\options.vim
source ~\AppData\Local\nvim\config\plugins.vim

if !empty(glob(stdpath('data').'\plugged'))
    source ~\AppData\Local\nvim\config\telescope.vim
    source ~\AppData\Local\nvim\config\nvim-tree.vim
    source ~\AppData\Local\nvim\config\terminal.vim
    source ~\AppData\Local\nvim\config\statusline.vim
    source ~\AppData\Local\nvim\config\theme.vim
    source ~\AppData\Local\nvim\config\git.vim
    source ~\AppData\Local\nvim\config\coc.vim
    lua require("plugin.dashboard")
    "lua require("plugins.nvimtree")
    "lua require("plugins.compe")
    "lua require("plugins.lsp")
    "lua require("plugins.lspsaga")
    "lua require("plugins.hop")

endif
" Keybinds
source ~\AppData\Local\nvim\config\keybindings.vim
" Autocommands
source ~\AppData\Local\nvim\config\autocommands.vim
