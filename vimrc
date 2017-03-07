"  author: wangtianhe
"  e-mail: wangtianhe.china@gmail.com

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set how many lines of history VIM has to remember
set history=200

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from outside
set autoread

" With a map leader it's possible to do extra key combitaions
" like '<leader>w' saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interfaces
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor when moving vertically using j/k
set so=8

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show current position
set ruler

"
set cmdheight=1

" A buffer becomes hidden when it's abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
"set ignorecase

" When searching try to be smart about case
set smartcase

"
set hlsearch

" Makes search act like search in modern browers
set incsearch

" Don't redraw while executing macros
set lazyredraw

" For regular expression turn magic on
set magic

" Show macthing brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound no error
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"
set number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme desert
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions+=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

set encoding=utf-8

" Use Unix as the starndard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, Backups and Undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, Tab and Indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

set smarttab

" 1 tab equal 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai 	 " Auto indent
set si   " Smart indent
set wrap " Wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Lines
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell Checking
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ',ss' will toggle and untoggle spell checking
map <leader>ss :setlocal spell<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cscope Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " Add any database in current dir
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<cr><cr>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<cr><cr>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<cr><cr>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<cr>$<cr>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<cr><cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TMUX Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('$ITERM_PROFILE')
    if exists('$TMUX')
        let &amp;t_SI = "<Esc>[3 q"
        let &amp;t_EI = "<Esc>[0 q"
    else
        let &amp;t_SI = "<Esc>]50;CursorShape=1x7"
        let &amp;t_EI = "<Esc>]50;CursorShape=0x7"
    endif
end

if exists("$TMUX")
    set term=screen-256
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctags Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=tags;/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Taglist Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if exists('loaded_taglist') || &cp
"    finish
"endif
"let loaded_taglist = 1

" Location of the exuberant ctags tool
"if !exists('Tlist_Ctags_Cmd')
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"endif

" Automatically open the taglist window on Vim startup
"if !exists('Tlist_Auto_Open')
let Tlist_Auto_Open = 1
"endif

" Display tag prototypes or tag names in the taglist window
"if !exists('Tlist_Display_Prototype')
let Tlist_Display_Prototype = 0
"endif

" Display tag scopes in the taglist window
"if !exists('Tlist_Display_Tag_Scope')
let Tlist_Display_Tag_Scope = 1
"endif

" Use single left mouse click to jump to a tag. By default this is disabled.
" Only double click using the mouse will be processed.
"if !exists('Tlist_Use_SingleClick')
let Tlist_Use_SingleClick = 0
"endif

" Vertically split taglist window width setting
"if !exists('Tlist_WinWidth')
let Tlist_WinWidth = 30
"endif

" Tag listing window split (horizontal/vertical) control
"if !exists('Tlist_Use_Horiz_Window')
let Tlist_Use_Horiz_Window = 0
"endif

" Open the vertically split taglist window on the left or on the right side.
" This setting is relevant only if Tlist_Use_Horiz_Window is set to zero
"if !exists('Tlist_Use_Right_Window')
let Tlist_Use_Right_Window = 1
"endif

" Exit Vim if only the taglist window is currently open. By default, this is
" set to zero.
"if !exists('Tlist_Exit_OnlyWindow')
let Tlist_Exit_OnlyWindow = 1
"endif

let Tlist_Show_One_File = 1

"nmap <silent><F7> :TlistToggle<CR>
"nmap <silent><F8> :Tlist

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper Function
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Return ture if paste mode enable
function! HasPaste()
	if &paste
		return 'PASTE MODE'
        en
		return ''
endfunction
