set nocompatible


" Pathogen
" 
" Use :Helptags to run :helptags on every doc/ directory in your
" 'runtimepath'. 
call pathogen#infect() 
call pathogen#helptags() 


filetype on
filetype plugin on
filetype indent on
syntax on

" reload .vimrc file when saving it
autocmd! bufwritepost .vimrc source $MYVIMRC

set scrolloff=3                   "Show 3 lines of context around the cursor

set nobackup
set nowritebackup

"Create ~/.vim/tmp/ and ~/.vim/undofiles/ if necessary
set directory=$HOME/.vim/tmp//,.  " keep swap files in one place

"Permanent undo
if v:version >= 703
    set undodir=~/.vim/undofiles
    set undofile
endif

set autochdir                     " Change the current dir to the current file directory

set autoindent                    " automatic indentation
set mouse=a                       " use mouse everywhere
set ruler                         " show cursor position in status bar
set number                        " Show line numbers.
set noerrorbells                  " don't make noise
set pastetoggle=<F2>              " make paste easy

set showmatch                     " show matching brackets
set showmode                      " Show current vim mode
set showcmd                       "show incomplete cmds down the bottom
set tabstop=4                     " Set tabs to 4
set shiftwidth=4                  " related
set hidden                        " you can change buffers without saving

set pastetoggle=<F2>              " make paste easy
set hlsearch                      " search highlighting
set incsearch                     " incremental search

set scrolloff=3                   "leave 3 lines when moving screen
set title                         " Set the terminal's title

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set history=1000                  " Longer history

if v:version >= 700               " Uses the X11 clipboard as the default register.
	set clipboard=unnamed         " Only works in X11/Win with a vim compiled with '+xterm_clipboard'
endif

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set laststatus=2                  " always show the status line
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" colorscheme desert
" 256 colors in terminal
set t_Co=256
colorscheme topfunky-light


" mappings

let mapleader = ","               " The default leader is '\'
cnoremap w!! %!sudo tee > /dev/null %

"Edit files from the same dir as the current file
"cmap e!! e <C-R>=expand("%:p:h") . "/" <CR>

" some Emacs-like keybindings. This may be confusing
"inoremap <C-a> <esc>I
"inoremap <C-e> <esc>A

"Clear highlight and redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <esc>:nohls<CR>i


"Keep the visual selection when using < and >
vnoremap < <gv
vnoremap > >gv

"Use <TAB> and <S-TAB> for indenting in visual mode too
vnoremap <TAB> >
vnoremap <S-TAB> <

"...and in normal mode
nnoremap <tab> >>
nnoremap <S-tab> <<

" esc with jk
inoremap jk <esc>

"Clever tabs
"See :h ins-completion
function! CleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		return "\<C-N>"
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

" stay away from insert mode
"inoremap <LEFT> <NOP>
"inoremap <RIGHT> <NOP>
"inoremap <UP> <NOP>
"inoremap <DOWN> <NOP>

" learn hjkl!
noremap <LEFT> <NOP>
noremap <RIGHT> <NOP>
noremap <UP> <NOP>
noremap <DOWN> <NOP>

"FuzzyFinder
nnoremap <Leader>fe :FufFileWithCurrentBufferDir<enter>
nnoremap <Leader>fb :FufBuffer<enter>


"Tabularize
if exists(":Tabularize")
	nnoremap <Leader>t= :Tabularize /=<CR>
	vnoremap <Leader>t= :Tabularize /=<CR>
	nnoremap <Leader>t: :Tabularize /:\zs<CR>
	vnoremap <Leader>t: :Tabularize /:\zs<CR>
endif

"Show/hide invisible characters
nnoremap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"
" Read manpages from VIM
"
runtime ftplugin/man.vim
" 
" function! s:ReadMan(arg)
" 
" 	" Open a new window
" 	wincmd n
" 
" 	" Read in the manpage for arg (col -b is for formatting):
" 	exe ":r! man " . a:arg . " | col -b"
" 
" 	" Goto first line and delete it
" 	goto
" 	delete
" 
" 	" Set the buffer properties
" 
" 	let s:name = a:arg . "(MANPAGE)"
" 	silent exe "file " . s:name
" 
" 	setlocal buftype=nofile
" 	setlocal noswapfile
" 	setlocal nowrap
" 	setlocal nomodifiable
" 	setlocal filetype=man
" 
" endfunction
" 
" command! -nargs=1 -complete=shellcmd Man call s:ReadMan(<q-args>)


" only if GUI running
if has("gui_running")
	"colorscheme desert
	set visualbell            " don't make noise
	set cursorline            " highlight current line
	set guifont=monospace\ 10
	set guioptions-=r         "remove the right-hand scrollbar
	"set guioptions-=m        "remove the menubar
	set guioptions-=T         "remove the toolbar
endif


" Smalltalk files
autocmd FileType st call FT_st()

function! FT_st()
	set tabstop=8
	set softtabstop=4
	set shiftwidth=4
	set noexpandtab
	retab 8
endfunction

autocmd Filetype tex call s:init_tex()

function! s:init_tex()
	call s:define_commands()
	call s:define_mappings()
endfunction

function! s:define_commands()
	command! -nargs=0 -buffer LXPDFLatex call s:pdflatex()
	command! -nargs=0 -buffer LXViewPDF call s:view_pdf()
endfunction

function! s:define_mappings()
	nnoremap <buffer> <leader>cc :LXPDFLatex<CR>
	nnoremap <buffer> <leader>cv :LXViewPDF<CR>
endfunction

function! s:pdflatex()
	let s:result = system("pdflatex " . expand("%"))
	let s:valid_output = "Output written on"
	let s:valid = matchstr(s:result, s:valid_output)
	if empty(s:valid)
		call s:show_error(s:result)
	endif
endfunction

function! s:view_pdf()
	let s:filename = expand("%:r") . ".pdf"
	call system("evince " . s:filename)
endfunction

function! s:show_error(error) 
 	" Open a new window
 	wincmd n
 	" Set the buffer properties
 	silent exe "file Latex(error)"
	call append(0, split(a:error, '\n'))
 	setlocal buftype=nofile
 	setlocal noswapfile
 	setlocal nowrap
 	setlocal nomodifiable
endfunction
