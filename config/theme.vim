"colorscheme gruvbox
"colorscheme space_vim_theme
"colorscheme dracula
let g:tokyonight_style = "storm"
let g:tokyonight_italic_functions = 0
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Load the colorscheme
colorscheme tokyonight
"colorscheme zephyr
if(has("termguicolors"))
    set termguicolors
endif

" Devicons
let g:webdevicons_enable = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:DevIconsEnableFoldersOpenClose = 1
