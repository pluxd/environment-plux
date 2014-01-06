"" COMMON SETTINGS

" get pathogen up and running
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" set filetype stuff to on 
filetype on
filetype plugin on
filetype indent on

if has("gui_running")
	if has("gui_win32")
		" english language UI
		language messages en
	endif

	"remove menu bar 
	set guioptions-=m  

	"remove toolbar 
	set guioptions-=T  

	"remove scroll bar 
	set guioptions+=LlRrb
	set guioptions-=LlRrb

	if has("gui_win32")
		" use cool terminus font
		set guifont=Terminus:h12:cDEFAULT

		" custom color scheme
		colorscheme pyte

		" always show tab panel
		set showtabline=2
	else
		" never show tab panel
		set showtabline=0

		" use cool terminus font
		set guifont=Terminus\ 9

		colorscheme xoria256_plux
	endif

	" full screen
	"au GUIEnter * simalt ~x
else
	" never show tab panel
	set showtabline=0

	" custom color scheme
	colorscheme xoria256_plux
endif

" 256 colors support
if &term == "screen-256color"
	set term=rxvt
	set t_Co=256
endif

" syntax highlighting
syntax on

" 256 colors support
set t_Co=256

" highlight the cursor line
set cursorline

" ability to move cusor everywhere
"set virtualedit=all

" set the status line the way i like it
set stl=%f\ %m\ %r\ %=[#%n]\ %5.5l,%-5.5c\ [%3.3p%%]\ [%3.3b][0x%2.2B]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" show entering command
set showcmd

" highlight found matches
set nohlsearch

" enable increment search
set incsearch

" set tab = 4 spaces
set tabstop=4
set shiftwidth=4

" enable confirmation when switch between buffers
set confirm

" not breakable russian layout
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" bakspacing over indent, eol
set backspace=indent,eol,start

" indent params under function brace
set cinoptions=(0

" no bell, no visualbell
set noeb vb t_vb=

" Hide the mouse pointer while typing
set mousehide

" Add the unnamed register to the clipboard
set clipboard+=unnamed

" change default mapleader
let mapleader=','

" some useful mappings
imap <F2> <Esc>:w<CR>a
nmap <F2> <Esc>:w<CR>

" some useful functions
autocmd BufEnter * silent! lcd %:p:h

"" C IDE settings

"change default mapleader
let g:C_MapLeader = ','

"" SnipMate SETTINGS

function! ReloadSnippets( snippets_dir, ft )
	if strlen( a:ft ) == 0
		let filetype = "_"
	else
		let filetype = a:ft
	endif

	call ResetSnippets()
	call GetSnippets( a:snippets_dir, filetype )
endfunction

nmap ,rsn :call ReloadSnippets(snippets_dir, &filetype)<CR>
