" Leader key is \ (ё) by default but few screens down in this conf it will be
" set to , (б)
" more info about leader http://stackoverflow.com/questions/1764263/what-is-the-leader-in-a-vimrc-file

set nocompatible " with Vi
" filetype off " dont try to recognize filetype and don't trigger the FileType event

" let $PATH = $PATH . ':' . expand("~/.local/bink

set rtp+=~/.vim/bundle/Vundle.vim " Include Vundle - the plugin manager for vim
call vundle#begin()               " init it
Plugin 'VundleVim/Vundle.vim'     " let it manage itself :)

" Plugin 'nathanaelkane/vim-indent-guides' " a plugin for visually display ident
                                           " levels

Plugin 'Shougo/vimproc.vim'      " ? Some kind of improvement for vim's shell command execution
Plugin 'scrooloose/syntastic'    " Shows syntax errors after save
Plugin 'scrooloose/nerdtree'     " Filesystem explorer
Plugin 'tpope/vim-sensible'      " A set of good vim defaults
Plugin 'tpope/vim-surround'      " Helps to replace differen kind of surroundings. sc{[ to replace curly brackets with square
Plugin 'tpope/vim-commentary'    " Comment shortcut. gcc to comment and gc to uncomment
Plugin 'tpope/vim-repeat'        " Some improvement for default vim functionality
Plugin 'tpope/vim-unimpaired'    " Adds some shortcuts for paired mappings like :set spell and :set nospell
Plugin 'tpope/vim-fugitive'      " Git wrapper
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'ctrlpvim/ctrlp.vim'      " Fuzzy search
" Plugin 'altercation/vim-colors-solarized' " A colorsheme
Plugin 'nanotech/jellybeans.vim' " and this too
Plugin 'dyng/ctrlsf.vim'         " An alternative to ST's or Atom's CTrl-Shift-F
Plugin 'bling/vim-airline' " This fancy colored status bar in the bottom
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular' " Line things up
                           " I used :Tab /" for ligning this config
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'mbbill/undotree'
" Plugin 'tmatilai/vim-monit'
Plugin 'ervandew/supertab'
" Plugin 'jpalardy/vim-slime'
" Plugin 'Matt-Deacalion/vim-systemd-syntax'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'
Plugin 'jimenezrick/vimerl'
Plugin 'wting/rust.vim'
" Plugin 'cespare/vim-toml'
" Plugin 'facebook/vim-flow'
" Plugin '2072/PHP-Indenting-for-VIm'
" Plugin 'shawncplus/phpcomplete.vim'
Plugin 'joonty/vdebug.git'
Plugin 'rhysd/vim-clang-format'
Plugin 'tpope/vim-ragtag'
Plugin 'zah/nimrod.vim'
Plugin 'rgrinberg/vim-ocaml'

" Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'neovimhaskell/haskell-vim'

Plugin 'elzr/vim-json'
" Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'mattn/emmet-vim'
Plugin 'reedes/vim-lexical'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

Plugin 'Valloric/MatchTagAlways'

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'plasticboy/vim-markdown'
" Plugin 'JamshedVesuna/vim-markdown-preview'

Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-git'

" Plugin 'vim-ruby/vim-ruby'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-bundler'

Plugin 'tpope/vim-endwise'
Plugin 'Shougo/vimshell.vim'

Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-fireplace'
Plugin 'venantius/vim-eastwood'

Plugin 'vim-scripts/paredit.vim'
Plugin 'wlangstroth/vim-racket'

Plugin 'stephpy/vim-yaml'

Plugin 'chrisbra/csv.vim'
" Plugin 'ekalinin/Dockerfile.vim'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()
filetype plugin indent on

augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END

let mapleader=","

" Sets how many lines of history VIM has to remember
set history=500

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" enhanced command completion
set wildmenu

set visualbell

if has('mouse')
  set mouse=a
endif

" Don't redraw while executing macros (good performance config)
set lazyredraw

set cursorline
set hidden
set nofoldenable
"set modelines=0
"set clipboard=unnamed
"set synmaxcol=128
"set ttyscroll=10
"set encoding=utf-8
set nowrap
set number
set hlsearch
set ignorecase
set smartcase

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set autoindent
" set softtabstop=4
set expandtab
" set noexpandtab
set softtabstop=2
set shiftwidth=4
" set smarttab

" set background=dark
set t_Co=256
colorscheme jellybeans

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_aggregate_errors = 1

let g:syntastic_check_on_wq = 0

let g:jsx_ext_required = 0

" let g:slime_target = "tmux"

let g:vim_json_syntax_conceal = 0

let g:lexical#spelllang = ['en_us', 'ru_ru']

" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1

" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" if !exists('g:neocomplete#keyword_patterns')
" 	let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'

let g:easytags_async = 1

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType ruby setlocal omnifunc=rubycomplete#CompleteTags
" autocmd BufWritePost *.hs call s:check_and_lint()
" autocmd BufWritePost *.hs GhcModCheckAndLintAsync

let g:buffergator_viewport_split_policy = "B"
let g:buffergator_sort_regime = "mru"

let g:vim_markdown_folding_disabled = 1

let g:syntastic_haskell_checkers = ['']

let g:syntastic_javascript_checkers = ['eslint', 'flow']
let g:syntastic_javascript_flow_exe = 'flow'

let g:syntastic_haml_checkers = ['haml_lint']
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_erlang_checkers = ['syntaxerl', 'escript']

let g:syntastic_php_checkers=['phpcs', 'php']
let g:syntastic_php_phpcs_exec='~/.composer/vendor/bin/phpcs'
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

let g:syntastic_enable_racket_racket_checker = 0

" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :UndotreeToggle<cr>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
nnoremap <silent> <bs> <C-w><Left>

" Toggle paste mode
" nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
" imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>
"
" NOTE!
"     I disabled it for in favor of :yo command provided by vim-unimpaired

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>

let NERDTreeIgnore = ['\.pyc$', '\.retry$']

" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

nmap <silent> // :nohlsearch<CR>
noremap ,hl :set hlsearch! hlsearch?<CR>

" Allows you to enter sudo pass and save the file
" " when you forgot to open your file with sudo
cmap w!! %!sudo tee > /dev/null %

" Allow to copy/paste between VIM instances
" "copy the current visual selection to ~/.vbuf
vmap <Leader>y :w! ~/.vbuf<CR>
" "copy the current line to the buffer file if no visual selection
nmap <Leader>y :.w! ~/.vbuf<CR>
" "paste the contents of the buffer file
nmap <Leader>p :r ~/.vbuf<CR>

au BufRead,BufNewFile {Vagrantfile,Gemfile,Capfile} set ft=ruby
" au BufRead,BufNewFile *.phtml set ft=php

" autocmd FileType ruby compiler ruby

" au FileType ruby setl sw=2 sts=2 et
" au FileType javascript setl sw=2 sts=2 et
" au FileType yaml setl sw=2 sts=2 et
" autocmd Filetype html setlocal ts=2 sw=2
autocmd Filetype php setlocal ts=4 sw=4 autoindent
autocmd Filetype php setlocal ts=4 sw=4 autoindent

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

