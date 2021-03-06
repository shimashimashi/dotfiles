filetype off " Required!

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone -b 1.0 https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on     " Required!

imap <C-j> <esc>
set smartindent
set smarttab
set hlsearch
set smartcase
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set cursorline
" colorscheme solarized
" set background=dark
nnoremap ; :
nnoremap : ;
nnoremap tn :tabnext<Space>
set imdisable
" set binary noeol
" set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" ヤンクなどで * レジスタにも書き込む
set clipboard=unnamed
" set clipboard+=autoselect

" ヤンクなどで + レジスタにも書き込む
if has('unnamedplus')
  set clipboard+=unnamedplus
endif

" gvimrc読まない
let plugin_cmdex_disable = 1
