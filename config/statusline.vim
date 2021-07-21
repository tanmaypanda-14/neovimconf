let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             [ 'virtualenv', 'fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['bufnum'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}',
      \   'virtualenv': '%{strlen(virtualenv#statusline())?virtualenv#statusline():"(No Env)"}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

"Tabs
set showtabline=2
let g:lightline#bufferline#unnamed = 'No Name'
let g:lightline#bufferline#filename_modifier= ':.'
let g:lightline#bufferline#more_buffers = '...'
let g:lightline#bufferline#modified = ' ●'
let g:lightline#bufferline#read_only = ' '
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#show_number = 0
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#clickable = 1
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
