" Pathogen

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Filetype stuff

filetype on
filetype plugin on
filetype indent on

" GUI

if has("gui_win32")
	colorscheme pyte " custom color scheme
	language messages en " english language UI

	set guifont=Terminus:h12:cDEFAULT " use cool terminus font
	set showtabline=2 " always show tab panel

	cnoreabbrev fx exe '% !'.expand(g:VimFilesDir).'/externaltools/xmllint-1.0.exe % --format'

elseif has("gui_gtk2")
	colorscheme xoria256_plux

	set showtabline=0 " never show tab panel
	set guifont=Terminus\ 9 " use cool terminus font
else
endif

if has("gui_running")
	"au GUIEnter * simalt ~x " full screen
	
	set guioptions-=m "remove menu bar 
	set guioptions-=T "remove toolbar 
	set guioptions+=LlRrb "remove scroll bar 
	set guioptions-=LlRrb "remove scroll bar 
else
	colorscheme xoria256_plux " custom color scheme
	
	set showtabline=0 " never show tab panel
endif

" Common

syntax on " syntax highlighting

hi User1 ctermbg=red ctermfg=white guibg=red guifg=white

let mapleader=',' " change default mapleader

set t_Co=256 " 256 colors support
set cursorline " highlight the cursor line
"set virtualedit=all " ability to move cusor everywhere
set stl=
if exists("g:CurrentUser")
	if g:CurrentUser == 'root'
		set stl=%1*\ root\ 
		set stl+=%*
		set stl+=\ 
	endif
endif
set stl+=%f\ %m\ %r\ %=[#%n]\ %5.5l,%-5.5c\ [%3.3p%%]\ [%3.3b][0x%2.2B] " set the status line the way i like it
set laststatus=2 " tell VIM to always put a status line in, even if there is only one window
set showcmd " show entering command
set nohlsearch " highlight found matches
set incsearch " enable increment search
set tabstop=4 " set tab = 4 spaces
set shiftwidth=4 " set tab = 4 spaces
set confirm " enable confirmation when switch between buffers
set keymap=russian-jcukenwin " not breakable russian layout
set iminsert=0 " not breakable russian layout
set imsearch=0 " not breakable russian layout
set backspace=indent,eol,start " bakspacing over indent, eol
set cinoptions=(0 " indent params under function brace
set noeb vb t_vb= " no bell, no visualbell
set mousehide " hide the mouse pointer while typing
set clipboard+=unnamed " Add the unnamed register to the clipboard

cnoreabbrev vc exe 'edit '.expand(g:VimFilesDir).'/vimconfig.vim'

" XML folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" NERDTree

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :NERDTreeFind<CR>

let NERDTreeQuitOnOpen=1 " close tree after opening the file
let NERDTreeMinimalUI=1 " disables display of the 'Bookmarks' label and 'Press ? for help' text.
let NERDTreeDirArrows=0 " old school view (without dir arrows) 

" ARCHIVE
"
"autocmd BufEnter * silent! lcd %:p:h " default dir changed to current file parent
"
"" C IDE settings
"
""change default mapleader
"let g:C_MapLeader = ','
"
"" SnipMate settings
"
"Function! ReloadSnippets( snippets_dir, ft )
"	if strlen( a:ft ) == 0
"		let filetype = "_"
"	else
"		let filetype = a:ft
"	endif
"
"	call ResetSnippets()
"	call GetSnippets( a:snippets_dir, filetype )
"endfunction
"
"nmap ,rsn :call ReloadSnippets(snippets_dir, &filetype)<CR>
