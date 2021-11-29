""" Vim-Plug
call plug#begin()

""" PYWAL
Plug 'dylanaraps/wal.vim'

"color pairs
Plug 'luochen1990/rainbow'

"Auto pairs
Plug 'jiangmiao/auto-pairs'

"lightline
Plug 'itchyny/lightline.vim'

"Robot framework
"Plug 'mfukar/robotframework-vim'

"python stuff
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'neomake/neomake'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Edit files
Plug 'tpope/vim-eunuch'
"PHP
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

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
"Plug 'valloric/youcompleteme'
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

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Aesthetics - Main
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
Plug 'sickill/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nightsense/forgotten'
Plug 'zaki/zazen'

" Aethetics - Additional
Plug 'nightsense/nemo'
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
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
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
"Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json'
  \ ]

""" Multi cursors
Plug 'mg979/vim-visual-multi', { 'branch': 'master' }

call plug#end()
"Prettier config
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"Color pairs config
let g:rainbow_active = 1

"Lightline Config
let g:lightline = {
      \ 'colorscheme': 'wal',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"Relative numbers
set relativenumber

"Robot framework config
"let g:robot_syntax_for_txt = 1

"python stuff
let g:deoplete#enable_at_startup = 1

"let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)

"Personal Config
"
"React - JSX
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

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

"PHP

    " enable ncm2 for all buffers
    autocmd BufEnter * call ncm2#enable_for_buffer()

    " IMPORTANT: :help Ncm2PopupOpen for more information
    set completeopt=noinsert,menuone,noselect
        " suppress the annoying 'match x of y', 'The only match' and 'Pattern not
    " found' messages
    set shortmess+=c

    " CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
    inoremap <c-c> <ESC>

    " When the <Enter> key is pressed while the popup menu is visible, it only
    " hides the menu. Use this mapping to close the menu and also start a new
    " line.
    inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

    " Use <TAB> to select the popup menu:
    inoremap <expr> <Tab> pumvisible() ? "\<C-m>" : "\<Tab>"

    "autocompletion
    autocmd FileType xml,html inoremap </ </<C-x><C-o>

    " wrap existing omnifunc
    " Note that omnifunc does not run in background and may probably block the
    " editor. If you don't want to be blocked by omnifunc too often, you could
    " add 180ms delay before the omni wrapper:
    "  'on_complete': ['ncm2#on_complete#delay', 180,
    "               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
    au User Ncm2Plugin call ncm2#register_source({
            \ 'name' : 'css',
            \ 'priority': 9,
            \ 'subscope_enable': 1,
            \ 'scope': ['css','scss'],
            \ 'mark': 'css',
            \ 'word_pattern': '[\w\-]+',
            \ 'complete_pattern': ':\s*',
            \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
            \ })


" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

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
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci


" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 1
let g:ycm_enable_diagnostic_highlighting = 1
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

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

"map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <space>m :Marks<CR>

" Search and switch buffers
nmap <space>b :Buffers<cr>
" Find files by name under the current directory
nmap <space>f :Files<cr>
" Find files by name under the home directory
nmap <leader>h :Files ~/<cr>
" Search content in the current file
nmap <space>s :BLines<cr>
" Search content in the current file and in files under the current directory
nmap <leader>g :Ag<cr>

nmap <leader>R :Files `=GetGitRoot()`<cr>

function! GetGitRoot()
  " Get the dir of the current file
  let currentDir = expand("%:p:h")
  " We stop when we find the .git/ dir or hit root
  while !isdirectory(currentDir . "/.git/") && currentDir !=# "/"
    " Make the parent the current dir
    let currentDir = fnamemodify(currentDir, ':h')
  endwhile
  return currentDir
endfunction


" Border color
"let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
"let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

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
"color onehalfdark
colorscheme onehalfdark

"SEOUL256 THEME CONFIG
"seoul256 (dark):
"Range:   233 (darkest) ~ 239 (lightest)
"Default: 237
"let g:seoul256_background = 236

"GRUVBOX THEME CONFIG
"let g:gruvbox_contrast_light = "hard"
let g:gruvbox_bold = 1
"let g:gruvbox_termcolors = 200
"let g:gruvbox_hls_cursor = 'yellow'
"set bg=dark

"PUNK THEME
" pop-punk ANSI colors for vim terminal
"let g:terminal_ansi_colors = pop_punk#AnsiColors()

"""BOLD FONT CONFIG
set guifont=Cascadia-Code:h13

" for the airline theme - note the underscore instead of the hyphen
let g:airline_theme = 'wal'

" just for fun
let g:airline_section_c = '🌈😺💕%F'
"let g:airline_section_c = '😺%F'


" Opaque Background (Comment out to use terminal's profile)
"set termguicolors

" Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

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
"let g:NERDTreeDirArrowCollapsible = '↡'
"let g:NERDTreeDirArrowExpandable = '⬏'
let g:NERDTreeDirArrowCollapsible = '⬎'
"autocmd VimEnter * NERDTree

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Disable documentation window
"set completeopt-=preview

" vim-pydocstring
let g:pydocstring_doq_path = '~/.config/nvim/env/bin/doq'

" rupertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-x>"

" EasyAlign
"xmap ga <Plug>(EasyAlign)
"nmap ga <Plug>(EasyAlign)

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

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

""" Filetype-Specific Configurations

" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Custom Functions
" Dracula Mode (Dark)
function! ColorDracula()
    let g:airline_theme=''
    color dracula
    IndentLinesEnable
endfunction

""" Custom Mappings

let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme 
"nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>vt <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>

""" Change between buffers
nmap <space>q <C-w><C-w><CR>
"nmap <leader>f :Files<CR>
nmap <leader>go :Goyo<CR>
"nmap <leader>h :RainbowParentheses!!<CR>
"nmap <leader>j :set filetype=journal<CR>
"nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
"nmap <leader>n :HackerNews best<CR>J
nmap <silent> <leader><leader> :noh<CR>
nmap <space>w :bnext<CR>
"nmap <S-Tab> :bprevious<CR>

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

"Telescope binding
" Find files using Telescope command-line sugar.
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
"nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
"nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
"nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
"nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

