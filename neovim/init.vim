
" Setup NeoBundle  ----------------------------------------------------------{{{
" If vundle is not installed, do it first
  let bundleExists = 1
  if (!isdirectory(expand("$HOME/.nvim/bundle/neobundle.vim")))
     call system(expand("mkdir -p $HOME/.nvim/bundle"))
     call system(expand("git clone https://github.com/Shougo/neobundle.vim ~/.nvim/bundle/neobundle.vim"))
     let bundleExists = 0
  endif
  if 0 | endif

  if has('vim_starting')
    if &compatible
      " Be iMproved
      set nocompatible
    endif

" Required:
    set runtimepath+=~/.nvim/bundle/neobundle.vim/
    " set runtimepath+=~/Github/deoplete-angular/
  endif
"Fix for LimeLight
  set termguicolors
" Required:
  call neobundle#begin(expand('~/.nvim/bundle/'))
  let pluginsExist = 1
" Let NeoBundle manage NeoBundle
" Required:
  NeoBundleFetch 'Shougo/neobundle.vim'

" syntax --------------------------------------------------------------------{{{
  NeoBundle 'mhinz/vim-startify'
  NeoBundle 'deoplete.nvim'
  NeoBundle 'bagrat/vim-workspace'
  NeoBundle 'othree/html5.vim' 
  NeoBundle 'othree/yajs.vim' 
  NeoBundle 'othree/jsdoc-syntax.vim' 
  NeoBundle 'heavenshell/vim-jsdoc' 
  NeoBundle 'elzr/vim-json' 
  NeoBundle 'HerringtonDarkholme/yats.vim' 
  NeoBundle 'skwp/vim-html-escape' 
 " NeoBundle 'hail2u/vim-css3-syntax' 
 " NeoBundle 'ap/vim-css-color' 
  NeoBundle 'tpope/vim-markdown' 
  NeoBundle 'dhruvasagar/vim-table-mode' 
  NeoBundle 'nelstrom/vim-markdown-folding'
  NeoBundle 'rhysd/vim-grammarous' 
  NeoBundle 'tmhedberg/SimpylFold'
  NeoBundle 'tmux-plugins/vim-tmux' 
  NeoBundle 'itmammoth/doorboy.vim' 
  NeoBundle 'valloric/MatchTagAlways'
  NeoBundle 'tpope/vim-fugitive' 
  NeoBundle 'tpope/vim-rhubarb' 
  NeoBundle 'chemzqm/vim-easygit' 
  NeoBundle 'jreybert/vimagit'
  NeoBundle 'sgeb/vim-diff-fold' 
  NeoBundle 'airblade/vim-gitgutter' 
  NeoBundle 'junegunn/gv.vim' 
  NeoBundle 'lambdalisue/gina.vim' 
  NeoBundle 'scrooloose/nerdtree' 
  NeoBundle 'Xuyuanp/nerdtree-git-plugin' 
  NeoBundle 'tpope/vim-repeat' 
  NeoBundle 'tpope/vim-unimpaired' 
  NeoBundle 'neomake/neomake'
  NeoBundle 'editorconfig/editorconfig-vim' 
  NeoBundle 'AndrewRadev/switch.vim' 
  NeoBundle 'christoomey/vim-tmux-navigator' 
  NeoBundle 'vim-airline/vim-airline' 
  NeoBundle 'tpope/vim-surround' 
  NeoBundle 'tomtom/tcomment_vim' 
  NeoBundle 'mattn/emmet-vim' 
  NeoBundle 'sbdchd/neoformat' 
" deoplete stuff
  NeoBundle 'Shougo/deoplete.nvim' 
  NeoBundle 'Shougo/deol.nvim' 

  NeoBundle 'Shougo/denite.nvim' 
  " NeoBundle 'ctrlpvim/ctrlp.vim' 

  NeoBundle 'Shougo/neomru.vim' 
  NeoBundle 'Shougo/context_filetype.vim' 
  NeoBundle 'chemzqm/denite-git' 
  NeoBundle 'ternjs/tern_for_vim'
  NeoBundle 'carlitux/deoplete-ternjs' 
  NeoBundle 'artur-shaik/vim-javacomplete2' 
  NeoBundle 'Shougo/neco-vim' 
  NeoBundle 'Shougo/neoinclude.vim' 
  NeoBundle 'ujihisa/neco-look' 
  NeoBundle 'davidhalter/jedi-vim'
  NeoBundle 'zchee/deoplete-jedi' 
  NeoBundle 'zchee/deoplete-go' 
  NeoBundle 'junegunn/limelight.vim' 
  NeoBundle 'Konfekt/FastFold' 
  NeoBundle 'Shougo/neosnippet.vim' 
  NeoBundle 'Shougo/neosnippet-snippets' 
  NeoBundle 'Shougo/echodoc.vim' 
  NeoBundle 'honza/vim-snippets' 
  NeoBundle 'mhinz/vim-sayonara' 
  NeoBundle 'mattn/webapi-vim' 
  NeoBundle 'mattn/gist-vim' 
  NeoBundle 'pocari/vim-denite-gists' 
  NeoBundle 'vim-scripts/SyntaxRange' 
  NeoBundle 'terryma/vim-multiple-cursors' 
  NeoBundle 'MartinLafreniere/vim-PairTools' 
  NeoBundle 'Shougo/vimfiler.vim' 
  NeoBundle 'Shougo/unite.vim' 
  NeoBundle 'junegunn/gv.vim' 
  NeoBundle 'mhartington/oceanic-next' 
  NeoBundle 'sbdchd/neoformat'

  " call dein#local '~/GitHub', {},['operator-next'] 
  NeoBundle 'chemzqm/denite-git' 
  NeoBundle 'sjl/vitality.vim' 
  NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight' 
  NeoBundle 'ryanoasis/vim-devicons'
  call neobundle#end()

" Required:
  filetype plugin indent on
  let pluginsExist=1
  NeoBundleCheck

" }}}


" System Settings  ----------------------------------------------------------{{{

" source ~/.local.vim
" Neovim Settings
  set relativenumber
  set guicursor=a:blinkon0
  set termguicolors
  set clipboard+=unnamedplus
  set pastetoggle=<f6>
  set nopaste
  autocmd BufWritePre * %s/\s\+$//e
  set noshowmode
  set noswapfile
  filetype on
  set  number
  set numberwidth=1
  set tabstop=2 shiftwidth=2 expandtab
  set conceallevel=0
  set virtualedit=
  set wildmenu
  set laststatus=2
  set wrap linebreak nolist
  set wildmode=full
  set autoread
" leader is ,
  let mapleader = ','
  set undofile
  set undodir="$HOME/.VIM_UNDO_FILES"
" Remember cursor position between vim sessions
 autocmd BufReadPost *
             \ if line("'\"") > 0 && line ("'\"") <= line("$") |
             \   exe "normal! g'\"" |
             \ endif
             " center buffer around cursor when opening files
  autocmd BufRead * normal zz
  " set updatetime=500
  set complete=.,w,b,u,t,k
  autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
  autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
  set formatoptions+=t
  set inccommand=nosplit
  set shortmess=atIc
  set isfname-==
  set spell

  "Workspace settings
  let g:workspace_powerline_separators = 1
  let g:workspace_subseparator = "|"
  let g:workspace_left_trunc_icon = "<"
  let g:workspace_right_trunc_icon = ">"

" }}}

" System mappings  ----------------------------------------------------------{{{

" No need for ex mode
" nnoremap Q <nop>
  vnoremap // y/<C-R>"<CR>
" exit insert, dd line, enter insert
  inoremap <c-d> <esc>ddi
" Navigate between display lines
  noremap  <silent> <Up>   gk
  noremap  <silent> <Down> gj
  noremap  <silent> k gk
  noremap  <silent> j gj
  noremap  <silent> <Home> g<Home>
  noremap  <silent> <End>  g<End>
  inoremap <silent> <Home> <C-o>g<Home>
  inoremap <silent> <End>  <C-o>g<End>
" copy current files path to clipboard
  nmap cp :let @+= expand("%") <cr>
" Neovim terminal mapping
" terminal 'normal mode'
  tmap <esc> <c-\><c-n><esc><cr>
  noremap H ^
  noremap L g_
  noremap J 5j
  nnoremap K 5k
" Join Lines
  nnoremap <leader>j J
  " nnoremap K 5k
" this is the best, let me tell you why
" how annoying is that everytime you want to do something in vim
" you have to do shift-; to get :, can't we just do ;?
" Plus what does ; do anyways??
" if you do have a plugin that needs ;, you can just swap the mapping
" nnoremap : ;
" give it a try and you will like it
  nnoremap ; :
  inoremap <c-f> <c-x><c-f>
" Copy to osx clipboard
  vnoremap <C-c> "*y<CR>
  " vnoremap y "*y<CR>
  " nnoremap Y "*Y<CR>
  " vnoremap y myy`y
  " vnoremap Y myY`y
  let g:multi_cursor_next_key='<C-n>'
  let g:multi_cursor_prev_key='<C-p>'
  let g:multi_cursor_skip_key='<C-x>'
  " let g:multi_cursor_quit_key='<Esc>'

" Align blocks of text and keep them selected
  vmap < <gv
  vmap > >gv
  nnoremap <leader>d "_d
  vnoremap <leader>d "_d
  vnoremap <c-/> :TComment<cr>
  nnoremap <silent> <esc> :noh<cr>
  nnoremap <leader>e :call <SID>SynStack()<CR>
  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc

  function! s:PlaceholderImgTag(size)
    let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
    let [width,height] = split(a:size, 'x')
    execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
    endfunction
  command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)

"}}}"

" Themes, Commands, etc  ----------------------------------------------------{{{
  syntax on
  colorscheme OceanicNext
  let g:OceanicNext_italic = 1
"}}}

" MarkDown ------------------------------------------------------------------{{{

  noremap <leader>TM :TableModeToggle<CR>
  let g:table_mode_corner="|"

  let g:neomake_markdown_proselint_maker = {
      \ 'errorformat': '%W%f:%l:%c: %m',
      \ 'postprocess': function('neomake#postprocess#GenericLengthPostprocess'),
      \}
  let g:neomake_markdown_enabled_makers = ['alex', 'proselint']

"}}}

" Javascript ----------------------------------------------------------------{{{

  " let g:neoformat_enabled_javascript = ['prettier']
  let g:neomake_javascript_enabled_makers = ['eslint']

  let g:jsx_ext_required = 1
  let g:jsdoc_allow_input_prompt = 1
  let g:jsdoc_input_description = 1
  let g:vim_json_syntax_conceal = 0
  let g:tern#command = ['tern']
  let g:tern#arguments = ['--persistent']

  " let g:nvim_typescript#signature_complete=1
  " let g:nvim_typescript#type_info_on_hold=1
  " let g:nvim_typescript#max_completion_detail=100
  "
  let g:neomake_typescript_tsc_maker = {
            \ 'append_file': 0,
            \ 'args': ['--project', getcwd() . '/tsconfig.json', '--noEmit'],
            \ 'errorformat':
            \   '%E%f %#(%l\,%c): error %m,' .
            \   '%E%f %#(%l\,%c): %m,' .
            \   '%Eerror %m,' .
            \   '%C%\s%\+%m'
            \}

  let g:neomake_typescript_enabled_makers = ['tsc']
  map <silent> <leader>gd :TSDoc <cr>
  map <silent> <leader>gt :TSType <cr>
  map <silent> <leader>@ :Denite -buffer-name=TSDocumentSymbol TSDocumentSymbol <cr>
  " autocmd FileType typescript setl omnifunc=TSComplete
  let g:nvim_typescript#kind_symbols = {
      \ 'keyword': 'keyword',
      \ 'class': '',
      \ 'interface': 'interface',
      \ 'script': 'script',
      \ 'module': '',
      \ 'local class': 'local class',
      \ 'type': 'type',
      \ 'enum': '',
      \ 'enum member': '',
      \ 'alias': '',
      \ 'type parameter': 'type param',
      \ 'primitive type': 'primitive type',
      \ 'var': '',
      \ 'local var': '',
      \ 'property': '',
      \ 'let': '',
      \ 'const': '',
      \ 'label': 'label',
      \ 'parameter': 'param',
      \ 'index': 'index',
      \ 'function': '',
      \ 'local function': 'local function',
      \ 'method': '',
      \ 'getter': '',
      \ 'setter': '',
      \ 'call': 'call',
      \ 'constructor': '',
      \}
" }}}

" Java ----------------------------------------------------------------------{{{

  autocmd FileType java setlocal omnifunc=javacomplete#Complete

"}}}

" HTML ----------------------------------------------------------------------{{{
  let g:neomake_html_enabled_makers = []

" }}}

" Go ------------------------------------------------------------------------{{{

"}}}

" CSS -----------------------------------------------------------------------{{{

"}}}

" Lua -----------------------------------------------------------------------{{{

"}}}

" Python --------------------------------------------------------------------{{{

  "let g:python_host_prog = '/usr/local/bin/python2'
  let g:python3_host_prog = '/Users/pthirunavukkarasu/anaconda3/bin/python'
  " let $NVIM_PYTHON_LOG_FILE='nvim-python.log'
  let g:jedi#auto_vim_configuration = 0
  let g:jedi#documentation_command = "<leader>k"

" }}}

" Fold, gets it's own section  ----------------------------------------------{{{

  function! MyFoldText() " {{{
      let line = getline(v:foldstart)
      let nucolwidth = &fdc + &number * &numberwidth
      let windowwidth = winwidth(0) - nucolwidth - 3
      let foldedlinecount = v:foldend - v:foldstart

      " expand tabs into spaces
      let onetab = strpart('          ', 0, &tabstop)
      let line = substitute(line, '\t', onetab, 'g')

      let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines   ')
      let fillcharcount = windowwidth - len(line)
      " return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines'
      return line . '…' . repeat(" ",fillcharcount)
  endfunction " }}}

  set foldtext=MyFoldText()

  autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
  autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

  autocmd FileType vim setlocal fdc=1
  set foldlevel=99

  " Space to toggle folds.
  nnoremap <Space> za
  vnoremap <Space> za
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0

  autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99

  autocmd FileType css,scss,json setlocal foldmethod=marker
  autocmd FileType css,scss,json setlocal foldmarker={,}

  autocmd FileType coffee setl foldmethod=indent
  let g:xml_syntax_folding = 1
  autocmd FileType xml setl foldmethod=syntax

  autocmd FileType html setl foldmethod=expr
  autocmd FileType html setl foldexpr=HTMLFolds()

  autocmd FileType javascript,typescript,json setl foldmethod=syntax

" }}}

" Git -----------------------------------------------------------------------{{{

  "let g:gitgutter_sign_column_always = 1
  set signcolumn=yes

" }}}

" NERDTree ------------------------------------------------------------------{{{

  let g:vimfiler_ignore_pattern = ""
  " map <silent> - :VimFiler<CR>
  map <C-o> :NERDTreeToggle<CR> " open/close nerdtree with ctrl+o:
  let g:vimfiler_tree_leaf_icon = ''
  let g:vimfiler_tree_opened_icon = ''
  let g:vimfiler_tree_closed_icon = ''
  let g:vimfiler_file_icon = ''
  let g:vimfiler_marked_file_icon = '*'
  let g:vimfiler_expand_jump_to_first_child = 0
  " let g:vimfiler_as_default_explorer = 1
  call unite#custom#profile('default', 'context', {
              \'direction': 'botright',
              \ })
  call vimfiler#custom#profile('default', 'context', {
              \ 'explorer' : 1,
              \ 'winwidth' : 35,
              \ 'winminwidth' : 35,
              \ 'toggle' : 1,
              \ 'auto_expand': 0,
              \ 'parent': 1,
              \ 'explorer_columns': 'devicons:git',
              \ 'status' : 0,
              \ 'safe' : 0,
              \ 'split' : 1,
              \ 'hidden': 1,
              \ 'no_quit' : 1,
              \ 'force_hide' : 0,
              \ })
  augroup vfinit
  autocmd FileType vimfiler call s:vimfilerinit()
  augroup END
  function! s:vimfilerinit()
      set nonumber
      set norelativenumber
      nmap <silent><buffer><expr> <CR> vimfiler#smart_cursor_map(
            \ "\<NeoBundle>(vimfiler_expand_tree)",
            \ "\<NeoBundle>(vimfiler_edit_file)"
            \)
      nmap <silent> m :call NerdUnite()<cr>
      nmap <silent> r <NeoBundle>(vimfiler_redraw_screen)
  endf
  " let g:vimfiler_ignore_pattern = '^\%(\.git\|\.DS_Store\)$'
  let g:webdevicons_enable_vimfiler = 0
  let g:vimfiler_no_default_key_mappings=1
  function! NerdUnite() abort "{{{
    let marked_files =  vimfiler#get_file(b:vimfiler)
    call unite#start(['nerd'], {'file': marked_files})
  endfunction "}}}

  "map <silent> - :NERDTreeToggle<CR>
  augroup ntinit
  autocmd FileType nerdtree call s:nerdtreeinit()
  augroup END
  function! s:nerdtreeinit()
      nunmap <buffer> K
      nunmap <buffer> J
  endf
  let NERDTreeShowHidden=1
  let NERDTreeHijackNetrw=0
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:NERDTreeWinSize=45
  let g:NERDTreeAutoDeleteBuffer=1
  let g:WebDevIconsOS = 'Darwin'
  let NERDTreeMinimalUI=1
  let NERDTreeCascadeSingleChildDir=1
  let g:NERDTreeHeader = 'hello'


" let g:webdevicons_conceal_nerdtree_brackets = 0
  " let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
  " 
  let g:NERDTreeShowIgnoredStatus = 0
  " let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 1
  " let g:NERDTreeDirArrows = 1
  let g:NERDTreeDirArrowExpandable = ''
  let g:NERDTreeDirArrowCollapsible = ''
  let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
"}}}

" Nvim terminal -------------------------------------------------------------{{{

  au BufEnter * if &buftype == 'terminal' | :startinsert | endif
  autocmd BufEnter term://* startinsert
  autocmd TermOpen * set bufhidden=hide

" }}}

" Vim-Devicons -------------------------------------------------------------0{{{

  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''

" }}}

" Code formatting -----------------------------------------------------------{{{

" ,f to format code, requires formatters: read the docs
  noremap <silent> <leader>f :Neoformat<CR>

" }}}

" Snipppets -----------------------------------------------------------------{{{

" Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1
  let g:neosnippet#expand_word_boundary = 1
  imap <C-k>     <NeoBundle>(neosnippet_expand_or_jump)
  smap <C-k>     <NeoBundle>(neosnippet_expand_or_jump)
  xmap <C-k>     <NeoBundle>(neosnippet_expand_target)

" SuperTab like snippets behavior.
  imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<NeoBundle>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<NeoBundle>(neosnippet_expand_or_jump)"
  \: "\<TAB>"

"}}}

" Deoplete ------------------------------------------------------------------{{{

" enable deoplete
  let g:deoplete#enable_at_startup = 1
  let g:echodoc_enable_at_startup=1
  set splitbelow
  set completeopt+=noselect
  set completeopt-=preview
  autocmd CompleteDone * pclose

  function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete=2
  endfunction
  function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete=0
  endfunction
  let g:deoplete#file#enable_buffer_path=1

  call deoplete#custom#set('buffer', 'mark', 'ℬ')
  call deoplete#custom#set('ternjs', 'mark', '')
  call deoplete#custom#set('omni', 'mark', '⌾')
  call deoplete#custom#set('file', 'mark', 'file')
  call deoplete#custom#set('jedi', 'mark', '')
  call deoplete#custom#set('typescript', 'mark', '')
  call deoplete#custom#set('neosnippet', 'mark', '')

  call deoplete#custom#set('typescript',  'rank', 630)
  " let g:deoplete#omni_patterns = {}
  " let g:deoplete#omni_patterns.html = ''
  function! Preview_func()
    if &pvw
      setlocal nonumber norelativenumber
     endif
  endfunction
  autocmd WinEnter * call Preview_func()
  let g:deoplete#ignore_sources = {}
  let g:deoplete#ignore_sources._ = ['around']

  " let g:deoplete#enable_debug = 1
  " call deoplete#enable_logging('DEBUG', 'deoplete.log')
  " call deoplete#custom#set('typescript', 'debug_enabled', 1)
"}}}

" Emmet customization -------------------------------------------------------{{{

" Remapping <C-y>, just doesn't cut it.
  function! s:expand_html_tab()
" try to determine if we're within quotes or tags.
" if so, assume we're in an emmet fill area.
   let line = getline('.')
   if col('.') < len(line)
     let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
     if len(line) >= 2
        return "\<C-n>"
     endif
   endif
" expand anything emmet thinks is expandable.
  if emmet#isExpandable()
    return emmet#expandAbbrIntelligent("\<tab>")
    " return "\<C-y>,"
  endif
" return a regular tab character
  return "\<tab>"
  endfunction
  " let g:user_emmet_expandabbr_key='<Tab>'
  " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

  autocmd FileType html,css,scss imap <silent><buffer><expr><tab> <sid>expand_html_tab()
  let g:user_emmet_mode='a'
  let g:user_emmet_complete_tag = 0
  let g:user_emmet_install_global = 0
  autocmd FileType html,css,scss EmmetInstall
"}}}


" Denite --------------------------------------------------------------------{{{

  let g:webdevicons_enable_denite = 0
  let s:menus = {}

  call denite#custom#option('_', {
        \ 'prompt': '❯',
        \ 'winheight': 10,
        \ 'reversed': 1,
        \ 'highlight_matched_char': 'Underlined',
        \ 'highlight_mode_normal': 'CursorLine',
        \ 'updatetime': 1,
        \ 'auto_resize': 1,
        \})
  call denite#custom#option('TSDocumentSymbol', {
        \ 'prompt': ' @' ,
        \ 'reversed': 0,
        \})
  call denite#custom#var('file_rec', 'command',['rg', '--threads', '2', '--files', '--glob', '!.git'])
  " call denite#custom#source('file_rec', 'vars', {
  "       \ 'command': [
  "       \ 'ag', '--follow','--nogroup','--hidden', '--column', '-g', '', '--ignore', '.git', '--ignore', '*.png'
  "       \] })
  call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
  call denite#custom#source('grep', 'matchers', ['matcher_regexp'])
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'default_opts',['--vimgrep'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])

  nnoremap <silent> <c-p> :Denite file_rec<CR>
  nnoremap <silent> <leader>h :Denite  help<CR>
  nnoremap <silent> <leader>c :Denite colorscheme<CR>
  nnoremap <silent> <leader>b :Denite buffer<CR>
  nnoremap <silent> <leader>a :Denite grep:::!<CR>
  nnoremap <silent> <leader>u :call dein#update()<CR>
  nnoremap <silent> <Leader>i :Denite menu:ionic <CR>
  call denite#custom#map('insert','<C-n>','<denite:move_to_next_line>','noremap')
  call denite#custom#map('insert','<C-p>','<denite:move_to_previous_line>','noremap')
  call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
    \ [ '.git/', '.ropeproject/', '__pycache__/',
    \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
  call denite#custom#var('menu', 'menus', s:menus)

"}}}

" Git from denite...ERMERGERD -----------------------------------------------{{{
  let s:menus.git = {
    \ 'description' : 'Fugitive interface',
    \}
  let s:menus.git.command_candidates = [
    \[' git status', 'Gstatus'],
    \[' git diff', 'Gvdiff'],
    \[' git commit', 'Gcommit'],
    \[' git stage/add', 'Gwrite'],
    \[' git checkout', 'Gread'],
    \[' git rm', 'Gremove'],
    \[' git cd', 'Gcd'],
    \[' git push', 'exe "Git! push " input("remote/branch: ")'],
    \[' git pull', 'exe "Git! pull " input("remote/branch: ")'],
    \[' git pull rebase', 'exe "Git! pull --rebase " input("branch: ")'],
    \[' git checkout branch', 'exe "Git! checkout " input("branch: ")'],
    \[' git fetch', 'Gfetch'],
    \[' git merge', 'Gmerge'],
    \[' git browse', 'Gbrowse'],
    \[' git head', 'Gedit HEAD^'],
    \[' git parent', 'edit %:h'],
    \[' git log commit buffers', 'Glog --'],
    \[' git log current file', 'Glog -- %'],
    \[' git log last n commits', 'exe "Glog -" input("num: ")'],
    \[' git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
    \[' git log until date', 'exe "Glog --until=" input("day: ")'],
    \[' git log grep commits',  'exe "Glog --grep= " input("string: ")'],
    \[' git log pickaxe',  'exe "Glog -S" input("string: ")'],
    \[' git index', 'exe "Gedit " input("branchname\:filename: ")'],
    \[' git mv', 'exe "Gmove " input("destination: ")'],
    \[' git grep',  'exe "Ggrep " input("string: ")'],
    \[' git prompt', 'exe "Git! " input("command: ")'],
    \] " Append ' --' after log to get commit info commit buffers
"}}}

" Ionic denite source -------------------------------------------------------{{{

  function! Ionic(job) abort
    if a:job ==# "serve"
      enew!
      let filename = 'Ionic:\ '. a:job
      call termopen('ionic '. a:job)
      exe 'file 'filename
      startinsert
    else
      let platform = input('platform: ')
      enew!
      let filename = 'Ionic:\ '. a:job
      call termopen('ionic '. a:job . ' ' . platform)
      exe 'file 'filename
      startinsert
    endif
  endfunction

  function ExitHandle()
    echom self
  endfunction

  let s:menus.ionic = {
    \ 'description' : 'some rando ionic stuff',
    \}
  let s:menus.ionic.command_candidates = [
    \[' serve', 'call Ionic("serve")' ],
    \[' run device', 'call Ionic("run")'],
    \[' emulate device', 'call Ionic("emulate")'],
    \]
"}}}

" Navigate between vim buffers and tmux panels ------------------------------{{{

  let g:tmux_navigator_no_mappings = 1
  nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
  nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
  nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
  nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
  nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>
  tmap <C-j> <C-\><C-n>:TmuxNavigateDown<cr>
  tmap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
  tmap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
  tmap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
  tmap <C-;> <C-\><C-n>:TmuxNavigatePrevious<cr>

"}}}

" vim-airline ---------------------------------------------------------------{{{

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#mike#enabled = 0
  set hidden
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#neomake#error_symbol='• '
  let g:airline#extensions#neomake#warning_symbol='•  '
  let g:airline_symbols.branch = ''
  let g:airline_theme='oceanicnext'
  cnoreabbrev <silent> <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
  tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>
  nmap <leader>t :term<cr>
  nmap <leader>, :bnext<CR>
  tmap <leader>, <C-\><C-n>:bnext<cr>
  nmap <leader>. :bprevious<CR>
  tmap <leader>. <C-\><C-n>:bprevious<CR>
  tmap <leader>1  <C-\><C-n><NeoBundle>AirlineSelectTab1
  tmap <leader>2  <C-\><C-n><NeoBundle>AirlineSelectTab2
  tmap <leader>3  <C-\><C-n><NeoBundle>AirlineSelectTab3
  tmap <leader>4  <C-\><C-n><NeoBundle>AirlineSelectTab4
  tmap <leader>5  <C-\><C-n><NeoBundle>AirlineSelectTab5
  tmap <leader>6  <C-\><C-n><NeoBundle>AirlineSelectTab6
  tmap <leader>7  <C-\><C-n><NeoBundle>AirlineSelectTab7
  tmap <leader>8  <C-\><C-n><NeoBundle>AirlineSelectTab8
  tmap <leader>9  <C-\><C-n><NeoBundle>AirlineSelectTab9
  nmap <leader>1 <NeoBundle>AirlineSelectTab1
  nmap <leader>2 <NeoBundle>AirlineSelectTab2
  nmap <leader>3 <NeoBundle>AirlineSelectTab3
  nmap <leader>4 <NeoBundle>AirlineSelectTab4
  nmap <leader>5 <NeoBundle>AirlineSelectTab5
  nmap <leader>6 <NeoBundle>AirlineSelectTab6
  nmap <leader>7 <NeoBundle>AirlineSelectTab7
  nmap <leader>8 <NeoBundle>AirlineSelectTab8
  nmap <leader>9 <NeoBundle>AirlineSelectTab9
  let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '0 ',
        \ '1': '1 ',
        \ '2': '2 ',
        \ '3': '3 ',
        \ '4': '4 ',
        \ '5': '5 ',
        \ '6': '6 ',
        \ '7': '7 ',
        \ '8': '8 ',
        \ '9': '9 ',
        \}

"}}}

" Linting -------------------------------------------------------------------{{{

  autocmd! BufWritePost * Neomake
  let g:neomake_warning_sign = {'text': '•'}
  let g:neomake_error_sign = {'text': '•'}

"}}}

"Personal settings ----------------------------------------------------------{{{
" Move line up and down
  :nnoremap - ddp
  :nnoremap _ ddkP
  :inoremap <c-d> <esc>ddi

" Escape Insert mode"
 inoremap jk <ESC>

" Load vimrc file and reload
  :nnoremap <leader>ev :vsplit $MYVIMRC<cr>
  :nnoremap <leader>sv :source $MYVIMRC<cr>
  :nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
  " Function folding :
  " Force muscle memory by disabling default keys
  :inoremap <esc> <nop>
" NERDTree keymap shortcut"
  noremap <C-J> <C-W><C-J>
  noremap <C-K> <C-W><C-K>
  noremap <C-L> <C-W><C-L>
  noremap <C-H> <C-W><C-H>
  "noremap <C--> <C-W>-
  "noremap <C-=> <C-W>=
  "noremap <C-R> <C-W>R
  "noremap <C-T> <C-W>T
  "noremap <C-h> <C-W>H
  "noremap <C-l> <C-W>L
"fzf keymapping"
  nnoremap <silent> <leader>c :Commands<CR>
  nnoremap <C-p> :GFiles<CR>
  nnoremap <buffer> <silent> <leader><space> :Files<CR>
  nnoremap <silent> <leader>a :Buffers<CR>
  nnoremap <silent> <leader>A :Windows<CR>
  nnoremap <silent> <leader>; :BLines<CR>
  nnoremap <silent> <leader>o :BTags<CR>
  nnoremap <silent> <leader>O :Tags<CR>
  nnoremap <silent> <leader>? :History<CR>
  nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
  nnoremap <silent> <leader>. :AgIn

  nnoremap <silent> K :call SearchWordWithAg()<CR>
  vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
  nnoremap <silent> <leader>gl :Commits<CR>
  nnoremap <silent> <leader>ga :BCommits<CR>
  nnoremap <silent> <leader>ft :Filetypes<CR>

  function! SearchWordWithAg()
    execute 'Ag' expand('<cword>')
  endfunction

  function! SearchVisualSelectionWithAg() range
    let old_reg = getreg('"')
    let old_regtype = getregtype('"')
    let old_clipboard = &clipboard
    set clipboard&
    normal! ""gvy
    let selection = getreg('"')
    call setreg('"', old_reg, old_regtype)
    let &clipboard = old_clipboard
    execute 'Ag' selection
  endfunction

  function! SearchWithAgInDirectory(...)
    call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
  endfunction

  "Workspace 
  noremap <Tab> :WSNext<CR>
noremap <S-Tab> :WSPrev<CR>
noremap <Leader><Tab> :WSClose<CR>
noremap <Leader><S-Tab> :WSClose!<CR>
noremap <C-t> :WSTabNew<CR>

"Wipe register
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
autocmd VimEnter * WipeReg

"}}}