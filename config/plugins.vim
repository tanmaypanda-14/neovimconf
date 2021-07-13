" Install vim-plug if not installed
if empty(glob(stdpath('data') . '\site\autoload\plug.vim'))
    silent execute '!curl -fLo ' . '"' . stdpath('data') . '\site\autoload\plug.vim' . '"' . ' --create-dirs ' . '"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
    autocmd VimEnter * source $MYVIMRC | PlugInstall --sync | source $MYVIMRC
    " Enable plugins if vim-plug is installed
else
    call plug#begin(stdpath('data').'\plugged')
    Plug 'morhetz/gruvbox'
    Plug 'liuchengxu/space-vim-theme'
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdcommenter'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua', {'commit': '10e845e01cb5fe62c952ccedf2edfe4ea78be727'}
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-surround'
    Plug 'mhinz/vim-startify'
    Plug 'itchyny/lightline.vim'
    Plug 'mengelbrecht/lightline-bufferline'
    Plug 'shinchu/lightline-gruvbox.vim'
    call plug#end()
endif

" --------------------------------- Keybinds --------------------------------- "

nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pu :PlugUpdate<CR>
