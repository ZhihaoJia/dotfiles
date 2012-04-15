" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" --------------------------------------------------------------------

" General
set fileformats=unix,dos,mac        " support newline formats
filetype on                         " enable file type detection
filetype plugin on	            " use the file type plugins

" Console UI & Text Display
set showcmd                         " shows what you're typing as a command
set number		            " display line numbers
set ruler		            " show the cursor position
set wrap                            " soft wrap lines
set wildmenu                        " menu has tab completion - like bash
set wildmode=longest:full
set gcr=a:blinkon0	            " turn off blinking cursor in normal mode
set foldmethod=marker               " markers are used to specify folds
syntax on		            " syntax highlighting

" Text Editing & Search
set ai			            " auto indenting
set shiftwidth=4                    " spaces for indentation
set softtabstop=4                   " spaces for tab
set expandtab                       " use spaces instead of tabs
set smarttab                        " tab in front of line follows 'shiftwidth' (normally follows 'tabstop' or 'softtabstop')
set showmatch                       " show matching bracket
set hlsearch		            " highlight the last searched term
set incsearch                       " incremental search - search as you type
set ignorecase                      " case of normal letters are ignored
set smartcase                       " ignorecase enabled if search pattern contains lower case only
set history=100		            " keep 100 lines of history

" Other
set mouse=a                         " enable mouse support for all modes
set noerrorbells                    " disables error bells/sound
set visualbell                      " set visual bell

" MacVim
if has('gui_running')
    colorscheme solarized           " set colorscheme
    set background=dark             " dark background
    set guioptions-=T               " hide toolbar
    set co=203                      " window columns
    set lines=40                    " window lines
    set transparency=10             " window transparency 10%
    noremap <c-tab> : tabnext<cr>   " ctrl+tab for next tab

    set cul                         " highlight current line
else
    colorscheme default
endif

" automatically cd into directory file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

" --------------------------------------------------------------------

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup
