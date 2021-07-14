"colorscheme gruvbox
"colorscheme space_vim_theme
colorscheme dracula

if(has("termguicolors"))
    set termguicolors
endif
lua require 'colorizer'.setup()

" Devicons
let g:webdevicons_enable = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:DevIconsEnableFoldersOpenClose = 1
