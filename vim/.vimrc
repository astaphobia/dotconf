scriptencoding utf-8
set encoding=utf-8

"Pathogen
execute pathogen#infect()

set nocompatible              " be iMproved, required
filetype off                  " required

"backup vim-tmp file while opened file via vi or vim
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"Set working directory to Users/ariasa/Code
":cd Code
"Show line number
set number
"highlight current line number
set cursorline
"set update time
set updatetime=250


"Enable Folding
set foldmethod=indent
set foldlevel=99
"enable copy and paste clipboard
"set clipboard=unnamed
"---------------------------
"VIM VUNDLE
"---------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" editor config
Plugin 'editorconfig/editorconfig-vim'

" Tabs custom view
"Plugin 'Yggdroot/indentLine'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"øPlugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

"JSX PLUGIN
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'
"VUew Highligh
Plugin 'posva/vim-vue'
"Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

"NERDCOMMENTER
Plugin 'scrooloose/nerdcommenter'

"Multi Cursors
Plugin 'terryma/vim-multiple-cursors'

"wakatime.com
Plugin 'wakatime/vim-wakatime'

"theme switching vim mode
Plugin 'vim-airline/vim-airline'
"autocomplete
Plugin 'Valloric/YouCompleteMe'

"Dracula color scheme
Plugin 'dracula/vim'
Plugin 'google/vim-colorscheme-primary'
Plugin 'flazz/vim-colorschemes'

"NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"Emmet
Plugin 'mattn/emmet-vim'

Plugin 'chiel92/vim-autoformat'

execute pathogen#infect()
syntax on
filetype plugin indent on

"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"---------------
"VIMPLUG
"PlugInstall [name ...] [#threads]	Install plugins
"PlugUpdate [name ...] [#threads]	Install or update plugins
"PlugClean[!]	Remove unused directories (bang version will clean without prompt)
"PlugUpgrade	Upgrade vim-plug itself
"PlugStatus	Check the status of plugins
"PlugDiff	Examine changes from the previous update and the pending changes
"PlugSnapshot[!] [output path]	Generate script for restoring the current snapshot of the plugins
"---------------
call plug#begin('~/.vim/bundle')

"git-gutter
Plug 'airblade/vim-gitgutter'

"AUTO FORMAT
Plug 'beanworks/vim-phpfmt'

"syntatic for lint
"Plug 'vim-syntastic/syntastic'
call plug#end()

"activate javascript syntax
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1
if has('jsx_prgma_found')
	let g:jsx_pragma_required = 1
endif

" EsLint
"let statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
"let g:syntastic_javascript_checkers = ['eslint']
" ALE
let g:ale_emit_conflict_warnings = 1
let g:ale_sign_error = '.'
let g:ale_sign_warning = '!'
let g:ale_fix_on_save = 1
let &runtimepath.='.~/.vim/bundle/ale'

"backspace & delete error
set backspace=indent,eol,start
"SORTCUT
let mapleader = "\<Space>"

" ------------------------------------------------------------------------------------------
"  php-cs-fixer
"  ---------------------------------------------------------------------------------------
" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar

" If you use php-cs-fixer version 1.x
"let g:php_cs_fixer_level = "symfony"                   " options: --level (default:symfony)
"let g:php_cs_fixer_config = "default"                  " options: --config
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag" " options: --fixers
"let g:php_cs_fixer_config_file = '.php_cs'            " options: --config-file
" End of php-cs-fixer version 1 config params

" If you use php-cs-fixer version 2.x
"let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" End of php-cs-fixer version 2 config params

"let g:php_cs_fixer_php_path = "php"               " Path to PHP
"let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
"let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
"let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

"---------------------------------
"phpfmt
"--------------------------------
" A standard type: PEAR, PHPCS, PSR1, PSR2, Squiz and Zend
let g:phpfmt_standard = 'PSR2'
let g:phpfmt_command = '~/.vim/bundle/vim-phpfmt/third_party/phpcbf.phar'

" Give a shortcut key to NERD Tree
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader><Left> :tabp<CR>
nnoremap <leader><Right> :tabn<CR>
nnoremap <leader>x :tabclose<CR>
nnoremap w<Left>  :vertical resize -5<CR>
nnoremap w<Right> :vertical resize +5<CR>
nnoremap <space> za

nnoremap gr :grep <cword> *<CR>
nnoremap Gr :grep <cword> %:p:h/*<CR>
nnoremap gR :grep '\b<cword>\b' *<CR>
nnoremap GR :grep '\b<cword>\b' %:p:h/*<CR>
"NERDTree like setup
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 20
"augroup ProjectDrawer
"autocmd!
"autocmd VimEnter * :Vexplore
"augroup END

"-------------------------
"VISUAL
"------------------------
"COLORS:***
"color dracula
"colorscheme primary
colorscheme molokai
"**

"activate ligature on macvim
if has("gui_running")
	set macligatures
endif

"set macligatures
set guifont=Fira\ Code:h12
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

syntax on


