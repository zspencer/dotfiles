set nocompatible
set hlsearch
syntax on


set number
set directory=/tmp//

let g:paredit_leader = '\'
map <LEADER>r :wa<CR>:Require!<CR>
map <LEADER>t :wa<CR>:Require!<cr>:RunTests<cr>
map <LEADER>a :wa<CR>:Require!<cr>:RunTests!<cr>

"All the tab stuff money can buy
set sw=2
set expandtab
set tabstop=2
set autoindent
set nowrap
set smartcase
set smartindent

set textwidth=110
set colorcolumn=110
set ruler
set rulerformat=%l,%c%V%=%P

set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list

autocmd BufRead Makefile set noexpandtab

"Ignore stuff in fuzzy finders
set wildmenu
set wildmode=list:longest

" Ionic stuff
set wildignore+=platforms/**
set wildignore+=platforms
set wildignore+=plugins/**
set wildignore+=plugins

" Jekyll stuff
set wildignore+=_site/**
set wildignore+=_site
set wildignore+=public/output/**
set wildignore+=public/output

" Node stuff
set wildignore+=node_modules/**
set wildignore+=node_modules

" Make stuff
set wildignore+=/build/**
set wildignore+=/build/

" Solr Stuff
set wildignore+=solr/**
set wildignore+=solr

" PYTHONNNNNN
set wildignore+=*.pyc

" Tmp
set wildignore+=*/tmp/*

command! TrimSpaces %s/\s\+$//e
command! FixLineEnd %s/^M//gi

nmap <LEADER>p :ClearAllCtrlPCache<cr>

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-fugitive
call pathogen#infect()
syntax enable
filetype plugin indent on




augroup pencil
  autocmd!
  autocmd FileType md,markdown,mkd call pencil#init({'wrap': 'soft' })
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

let g:ale_linters = {
\   'vue': ['prettier'],
\   'javascript': ['prettier_standard'],
\   'cucumber': [],
\}
let g:ale_sign_column_always = 1

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
