if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
set nocompatible
filetype on             " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
filetype indent on
filetype plugin indent on

set mouse=a
set encoding=utf8
scriptencoding=utf-8
set langmenu=zh_CN.UTF-8
set termencoding=utf-8
set clipboard=unnamed
set number               " 开启行号显示
set relativenumber
set ruler                " 总是显示光标位置
set cursorline           " 高亮显示当前行
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
"set termguicolors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ' '      " 定义<leader>键
set history=500
set noerrorbells                 " 关闭错误的提示
set t_Co=2256
set background=dark
colorscheme molokai "one
set showcmd              " select模式下显示选中的行数
set cmdheight=2
set laststatus=2         " 总是显示状态栏
set lazyredraw
set showmatch
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set foldmethod=indent
let g:echodoc_enable_at_startup=1
hi Normal ctermfg=252 ctermbg=none
set updatetime=100
" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
"""""""""""""``"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=2            " 设置编辑时制表符占用空格数
set shiftwidth=2         " 设置格式化时制表符占用空格数
set softtabstop=2        " 设置4个空格为制表符
set list 
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set textwidth=0
set wrap               " 禁止折行
set backspace=indent,eol,start           " 使用回车键正常处理indent,eol,start等
set foldmethod=indent
set foldlevel=99
set splitbelow
set splitright
set laststatus=2
set autochdir
set showcmd
set formatoptions-=tc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set wildmode=longest,list,full
set tags=./.tags;,.tags
set tags=/usr/.tags
"set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感
set smartcase


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认


nnoremap sl :set splitright<cr>:vsplit<cr>
nnoremap sh :set nosplitright<cr>:vsplit<cr>
nnoremap sj :set nosplitbelow<cr>:split<cr>
nnoremap sk :set splitbelow<cr>:split<cr>
map <up> :res +5<cr>
map <down> :res -5<cr>
map <left> :vertical resize-5<cr>
map <right> :vertical resize+5<cr>
nnoremap J 5j
nnoremap K 5k
nnoremap tu :tabnew<cr>
nnoremap tl :+tabnext<cr>
nnoremap th :-tabnext<cr>
nnoremap tc :tabclose<cr>
nnoremap ww :w<cr>
nnoremap qq :q!<cr>
nnoremap wq :wq<cr>
inoremap jj <esc>0
nnoremap H :execute ":help " . expand("<cword>")<cr>
nnoremap <leader>S :source $MYVIMRC<cr>
map <leader>dm :delmarks 
map <leader>m :marks<cr>
noremap s <nop>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'puremourning/vimspector'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale' 
Plug 'Shougo/echodoc.vim'
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags'
Plug 'junegunn/vim-easy-align', {'on':'<Plug>(EasyAlign)'}
Plug 'luochen1990/rainbow'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'Yggdroot/LeaderF', {'do': './install.sh'}
Plug 'preservim/nerdcommenter'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'vim-scripts/a.vim'
call plug#end()  
" gutentags 配置文件
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
"
" markdown
let g:vim_markdown_math=1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
nnoremap <leader>yy :YcmForceCompileAndDiagnostics<CR>
let g:NERDTreeHighlightFoldersFullName = 1 

"" YCM
"" 如果不指定python解释器路径，ycm会自己搜索一个合适的(与编译ycm时使用的python版本匹配)
"" let g:ycm_server_python_interpreter = '/usr/bin/python2.7'
let g:ycm_confirm_extra_conf=0
set completeopt=menu,menuone,noinsert,noselect
" ---------------------------------------------------------------
"  diagnostic
let g:ycm_show_diagnostics_ui=0
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0

" ---------------------------------------------------------------
" trigger
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_min_num_identifier_candidate_chars = 2
" with . and ->
let g:ycm_auto_trigger = 1

" ---------------------------------------------------------------
" UI
let g:ycm_add_preview_to_completeopt=0
let g:ycm_max_num_candidates=50
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" ---------------------------------------------------------------
" identifier database
" with the keywords of the programming language you're writing
let g:ycm_use_ultisnips_completer=1
let g:ycm_collect_identifiers_from_tags_files=0
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax=0

" ---------------------------------------------------------------
" Others
let g:ycm_cache_omnifunc=0
let g:ycm_disable_for_files_larger_than_kb = 1000


nnoremap <leader>yd :YcmCompleter GoToDefinition<cr> 
nnoremap <leader>yg :YcmCompleter GetDoc<cr>
nnoremap <leader>yi :YcmCompleter GoToInclude<cr>
nnoremap <leader>yf :YcmCompleter FixIt<cr>
nnoremap <leader>yy :YcmForceCompileAndDiagnostics<CR>
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"inoremap <expr><cr> pumvisible() ? "\<C-y>" : "\<CR>"
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0

let g:rainbow_active=1
au Filetype FILETYPE let b:AutoPairs={"(": ")"}

let g:UltiSnipsExpandTrigger = 'oo'
let g:UltiSnipsListSnippets = '<c-oo>'
let g:UltiSnipsJumpForwardTrigger = 'oo'
let g:UltiSnipsJumpBackwardTrigger = 'pp'

" ale插件
let g:ale_lint_on_text_changed = 'normal'                     " 代码更改后启动检查
let g:ale_lint_on_insert_leave = 1                            " 退出插入模式即检查
let g:ale_sign_error           = '>>'                         " error 告警符号
let g:ale_sign_warning         = '--'                         " warning 告警符号
let g:ale_echo_msg_error_str   = 'E'                          " 错误显示字符
let g:ale_echo_msg_warning_str = 'W'                          " 警告显示字符
let g:ale_echo_msg_format      = '[%linter%] %s [%severity%]' " 告警显示格式
let g:ale_c_gcc_options        = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options      = '-Wall -O2 -std=c++11'
let g:ale_c_cppcheck_options   = ''
let g:ale_cpp_cppcheck_options = ''

"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {  'c++': ['clangd'], 
                        \'c': ['clangd'],
                        \'python':['pylint'],}
"普通模式下，ak 前往上一个错误或警告，aj 前往下一个错误或警告
"a : ale
nmap <leader>ak <Plug>(ale_previous_wrap)
nmap <leader>aj <Plug>(ale_next_wrap)
" ad 查看错误或警告的详细信息
nnoremap <leader>ad :ALEDetail<cr>
" 触发/关闭代码动态检查
nnoremap <leader><leader>ae :ALEToggle<CR>

inoremap <silent><expr> ( complete_parameter#pre_complete("()")
snoremap <c-j> <Plug>(complete_parameter#goto_next_parameter)
inoremap <c-j> <Plug>(complete_parameter#goto_next_parameter)
snoremap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
inoremap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
let g:DoxyenToolkit_briefTag_pre='@Wang'

 "分屏窗口移动
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l

nnoremap <leader>nh :noh<cr>
" nerdtree
nnoremap <silent> <leader>nt :NERDTreeToggle<cr>
" tagbar
"let g:tagbar_width = 30
nnoremap <silent> <leader>t :TagbarToggle<cr>

" LeaderF
nnoremap <leader><leader>lF :LeaderfFile<cr>
nnoremap <leader><leader>lf :LeaderfFunction<cr>
nnoremap <leader><leader>lm :LeaderfMru<cr>

xmap <leader><leader>ea <Plug>(EasyAlign)
nmap <leader><leader>ea <Plug>(EasyAlign)
nnoremap <leader><leader>rt :RainbowToggle<cr>
" a.vim头文件和源文件之间的切换
nnoremap <leader><leader>s  :A<cr>
" 注释
nnoremap <leader><leader>da :DoxAutor<cr>
nnoremap <leader><leader>df :Dox<cr>
nnoremap <leader><leader>db :DoxBlock<cr>
nnoremap <leader><leader>p "+p
nnoremap <leader><leader>y "+y
" 安装、更新、删除插件
nnoremap <leader><leader>I :PlugInstall<cr>
nnoremap <leader><leader>U :PlugUpdate<cr>
nnoremap <leader><leader>C :PlugClean<cr>
"// 2. 添加快捷键<leader>db快速生成.vimspector.json
""vimspector
"let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:vimspector_base_dir=expand('~/.vim/.vimspectorjson')
function! s:read_template_into_buffer(template)
   " has to be a function to avoid the extra space fzf#run insers otherwise
    execute '0r ~/.vim/.vimspectorjson/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
            \   'source': 'ls -1 ~/.vim/.vimspectorjson',
            \   'down': 20,
            \   'sink': function('<sid>read_template_into_buffer')
            \ })
noremap <leader>dj :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
"sign define vimspectorPC text=¶ texthl=SpellBad
nmap <silent><nowait><space>ds <Plug>VimspectorContinue
nmap <silent><nowait><space>dn <Plug>VimspectorStepOver
nmap <silent><nowait><space>do <Plug>VimspectorStepOut
nmap <silent><nowait><space>di <Plug>VimspectorStepInto
nmap <silent><nowait><space>db <Plug>VimspectorToggleBreakpoint
nmap <silent><nowait><space>dr <Plug>VimspectorRestart
nmap <silent><nowait><space>dp <Plug>VimspectorPause
nmap <silent><nowait><space>dt <Plug>VimspectorStop
nmap <silent><nowait><space>df <Plug>VimspectorAddFunctionBreakpoint
nmap <silent><nowait><space>dc <Plug>VimspectorToggleConditionalBreakpoint
nmap <silent><nowait><space>dq <Plug>VimspectorReset
nmap <silent><nowait><space>dC <Plug>VimspectorRunToCursor
nmap <silent><nowait><space>dB <Plug>VimspectorBalloonEval
xmap <silent><nowait><space>dB <Plug>VimspectorBalloonEval

nmap <silent><nowait><space>dl :VimspectorShowOutput 
nmap <silent><nowait><space>de :<C-u>VimspectorEval<space>
nmap <silent><nowait><space>dw :<C-u>VimspectorWatch<space>
nmap <A-w> :<C-u>VimspectorWatch<space>

nnoremap <leader>r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    silent! exec "!clear"
    exec "!time python3 %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
  endif
endfunc
" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
"let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
" ===
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>
autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,l --------<Enter>
