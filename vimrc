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

set encoding=utf-8

" reload .vimrc file when saving it
autocmd! bufwritepost .vimrc source $MYVIMRC

set scrolloff=3                   "Show 3 lines of context around the cursor

set nobackup
set nowritebackup

"Create ~/.vim/tmp/ and ~/.vim/undofiles/ if necessary
set directory=$HOME/.vim/tmp//,.  " keep swap files in one place

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal! g'\"" |
\ endif

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

"This colorscheme is generated with CSApproxSnapshot on vilight (modified)
colorscheme nico-twilight

" 256 colors in terminal
set t_Co=256
"CSApprox settings for better looking colorchemes in terminals
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

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
vmap <TAB> >
vmap <S-TAB> <

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
"noremap <LEFT> <NOP>
"noremap <RIGHT> <NOP>
"noremap <UP> <NOP>
"noremap <DOWN> <NOP>

"FuzzyFinder
nnoremap <Leader>fe :FufFileWithCurrentBufferDir<enter>
nnoremap <Leader>fb :FufBuffer<enter>

"Gundo
nnoremap <leader>u :GundoToggle<CR>

"Show/hide invisible characters
nnoremap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,trail:☠

" Read manpages from VIM
runtime ftplugin/man.vim

" vimhelp notes.
" Set the runtimepath
let &rtp = &rtp . ",~/notes"
autocmd BufWritePost ~/notes/* :helptags ~/notes/doc

" only if GUI running
if has("gui_running")
	set visualbell            " don't make noise
	set cursorline            " highlight current line
	set guifont=monospace\ 10
	set guioptions-=r         "remove the right-hand scrollbar
	set guioptions-=m        "remove the menubar
	set guioptions-=T         "remove the toolbar
endif

" Smalltalk files
autocmd FileType st call s:smalltalk_filetype()

function! s:smalltalk_filetype()
	set tabstop=8
	set softtabstop=4
	set shiftwidth=4
	set noexpandtab
	retab 8
endfunction

" Help files
autocmd FileType help call s:help_filetype()

function! s:help_filetype()
	nnoremap <buffer> <CR> <C-]>
	nnoremap <buffer> <BS> <C-T>
endfunction

" Remove trailing chars
command! RemoveTailingChars :%s/\s\+$/

" LaTex functions and mapping
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

function! s:map_env(key, name)
	execute "vnoremap <buffer> <leader>ce" . a:key . " S\\begin{" . a:name .
				\ "}<CR>\\end{" . a:name . "}<ESC>P"
endfunction

"	imap ,igr \includegraphics{}<ESC>i
"	vmap ,igr s\includegraphics{<ESC>pa}
"
"	imap ,fig \begin{figure}<CR>\end{figure}<ESC>O
"	vmap ,fig S\begin{figure}<CR>\end{figure}<ESC>P

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


" Bundle management on top of fugitive
" Toggle activated bundles using dir linking
" from "bundle-available" to "bundle"

function! s:available_bundle_dirs()
	return globpath(s:vimfiles() . "/bundle-available", "*")
endfunction

function! s:available_bundles()
	return s:bundles_from_paths(s:available_bundle_dirs())
endfunction

function! s:bundles_from_paths(list)
	let s:paths   = split(a:list, '\n')
	let s:bundles = []
	for path in s:paths
		call add(s:bundles, substitute(path, "\.*/", "", ""))
	endfor
	return s:bundles
endfunction

function! s:vimfiles()
	if(has("win32"))
		return $HOME . "\_vim"
	else
		return $HOME . "/.vim"
	endif
endfunction

command! BundleAvailable echo s:available_bundles()
