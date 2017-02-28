" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
" A tree explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Support for expanding abbreviations similar to emmet
Plug 'mattn/emmet-vim'
" Retro groove color scheme for Vim 
Plug 'morhetz/gruvbox'
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'ctrlpvim/ctrlp.vim'
" Improved the default motions
Plug 'easymotion/vim-easymotion'
" Parentheses, brackets, quotes, XML tags, and more
Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()



" Plugin related settings

" vim-airline
" Always display the statusline in all windows
set laststatus=2
" Always display the tabline, even if there is only one tab
set showtabline=2
" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

" nerdtree
nmap <C-n> :NERDTreeToggle<CR>

" gruvbox
colorscheme gruvbox
set background=dark

" easy-motion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)



" General
" Use the appropriate number of spaces to insert a <Tab> 
set expandtab
" Number of spaces that a <Tab> in the file counts for
set tabstop=4
" How many columns text is indented with the reindent operations
set shiftwidth=4
" disable Background Color Erase (BCE)
set t_ut=
