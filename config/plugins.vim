" Install vim-plug if not installed
if empty(glob(stdpath('data') . '\site\autoload\plug.vim'))
    silent execute '!curl -fLo ' . '"' . stdpath('data') . '\site\autoload\plug.vim' . '"' . ' --create-dirs ' . '"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
    autocmd VimEnter * source $MYVIMRC | PlugInstall --sync | source $MYVIMRC
    " Enable plugins if vim-plug is installed
else
    call plug#begin(stdpath('data').'\plugged')
    "Autocompletion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    "Common
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim'
    Plug 'liuchengxu/space-vim-theme'
    Plug 'itchyny/lightline.vim'
    Plug 'mengelbrecht/lightline-bufferline'
    Plug 'shinchu/lightline-gruvbox.vim'
    Plug 'glepnir/dashboard-nvim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdcommenter'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-surround'

    call plug#end()
endif

" --------------------------------- Keybinds --------------------------------- "

nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pu :PlugUpdate<CR>
