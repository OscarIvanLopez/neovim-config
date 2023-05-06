"" Vim-Plug
call plug#begin()

""" youcompleteme
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

""" PYWAL
Plug 'dylanaraps/wal.vim'

"color pairs
Plug 'luochen1990/rainbow'

"Auto pairs
Plug 'jiangmiao/auto-pairs'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"lightline
"Plug 'itchyny/lightline.vim'

"python stuff
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'neomake/neomake'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Edit files
Plug 'tpope/vim-eunuch'

"Web Plugins
Plug 'mxw/vim-jsx'
Plug 'bentayloruk/vim-react-es6-snippets'
Plug 'epilande/vim-es2015-snippets'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'mattn/emmet-vim'
Plug 'roxma/nvim-yarp'
Plug 'carlitux/deoplete-ternjs'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'alvan/vim-closetag'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'jparise/vim-graphql'

"Css plugins
Plug 'othree/csscomplete.vim'

"Node plugins
Plug 'moll/vim-node'

"Some themes
Plug 'fenetikm/falcon'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'bignimbus/pop-punk.vim'
Plug 'mbbill/vim-seattle'
Plug 'folke/tokyonight.nvim'
Plug 'dylanaraps/pywal'
Plug 'ajmwagar/vim-deus'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'sainnhe/everforest'
Plug 'folke/tokyonight.nvim'
Plug 'alessandroyorba/despacio'

" Aesthetics - Main
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
Plug 'sickill/vim-monokai'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'zaki/zazen'

" Aethetics - Additional
Plug 'yuttie/hydrangea-vim'
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night'

" Functionalities
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
"Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-abolish'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/Colorizer'
Plug 'KabbAmine/vCoolor.vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'vim-scripts/loremipsum'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'metakirby5/codi.vim'
Plug 'dkarter/bullets.vim'

"'' Git Support ''"
Plug 'rhysd/git-messenger.vim'
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'lewis6991/gitsigns.nvim'

"'' Language Support ''"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json'
  \ ]

""" Multi cursors
Plug 'mg979/vim-visual-multi', { 'branch': 'master' }

" DJANGO
Plug 'yaegassy/coc-htmldjango', {'do': 'yarn install --frozen-lockfile'}

""" python formatter
Plug 'vim-autoformat/vim-autoformat'

""" nvim-cmp plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'

" For luasnip users.
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'

" For ultisnips users.
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'

""" CTAGS
Plug 'ludovicchabant/vim-gutentags'

call plug#end()

""" Select With Enter """
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

""" CURSOR
hi Cursor guifg=green guibg=green

"""youcompleteme config
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

"Prettier config
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"Color pairs config
let g:rainbow_active = 1

"Relative numbers
set relativenumber

"Tags
let g:mta_use_matchparen_group = 1
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'jsx' : 1,
    \ 'tsx' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}

"auto close tags
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml, jsx, tsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx, tsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

"JavaScript" 
let g:used_javascript_libs = 'underscore,backbone'

"css
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

"FZF config
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
"let $FZF_DEFAULT_COMMAND="rg --files --hidden"
"
"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


""" Coloring
syntax on
colorscheme wal

""" DESPACIO THEME CONFIG
let g:despacio_Sunset = 1

"SEOUL256 THEME CONFIG
"seoul256 (dark):
"Range:   233 (darkest) ~ 239 (lightest)
"Default: 237
"let g:seoul256_background = 236

"GRUVBOX THEME CONFIG
"let g:gruvbox_contrast_light = "hard"
"let g:gruvbox_bold = 1
"let g:gruvbox_termcolors = 200
"let g:gruvbox_hls_cursor = 'yellow'
"set bg=dark

"PUNK THEME
" pop-punk ANSI colors for vim terminal
"let g:terminal_ansi_colors = pop_punk#AnsiColors()
"
" Transparent Background (For i3 and compton)
"highlight Normal guibg=NONE ctermbg=NONE
"highlight LineNr guibg=NONE ctermbg=NONE

""" Other Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title

""" Plugin Configurations

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
let g:NERDTreeDirArrowExpandable = '⬏'
let g:NERDTreeDirArrowCollapsible = '⬎'
"autocmd VimEnter * NERDTree

" Airline
" for the airline theme - note the underscore instead of the hyphen
let g:airline_theme = 'wal'

" just for fun
"let g:airline_section_c = '🌈😺💕%F'
let g:airline_section_c = '😺%F'

let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1

"supertab
"let g:SuperTabDefaultCompletionType = "<C-n>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

""" Filetype-Specific Configurations
" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Custom Mappings

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert


"map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <space>m :Marks<CR>

" Search and switch buffers
nmap <space>b :Buffers <cr>
" Find files by name under the current directory
nmap <space>f :Files <cr>
" Find files into the git branch
nmap <space>g :GFiles <cr>
" Find files by name under the home directory
nmap <leader>h :Files ~/<cr>
" Search content in the current file
nmap <space>s :BLines <cr>
" Search content in the current file and in files under the current directory
nmap <leader>g :Ag <cr>


let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme 
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>vt <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>

""" goyo
nmap <leader>go :Goyo<CR>
nmap <leader>l :Limelight!!<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
nmap <silent> <leader><leader> :noh<CR>
nmap <space>n :bnext<CR>
nmap <space>N :blast<CR>

"Prettier
nnoremap <space>p <cmd>Prettier<cr>

"COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>do <Plug>(coc-codeaction)

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> K :call CocAction('doHover')<CR>

""" Python Formatter
noremap <F3> :Autoformat<CR>
