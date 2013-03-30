 "------------------------------------------------------------
 " 全体オプション
 set nocompatible " Vi互換モードをオフ（Vimの拡張機能を有効）
 filetype indent plugin on "ファイルタイプを判別し、ファイルタイププラグインを有効にする
 syntax on " 色づけをオン
 colorscheme callisto "カラースキーマ設定

 "------------------------------------------------------------
 "Plugin Setting
 let g:user_zen_expandabbr_key = '<c-q>' "Zen coding ショートカット
 " 言語別に対応させる
let g:user_zen_settings = {
      \  'lang' : 'ja',
      \  'html' : {
      \    'filters' : 'html',
      \    'indentation' : ' '
      \  },
      \  'css' : {
      \    'filters' : 'fc',
      \  },
      \}
 let file_name = expand("%") "ナードツリー自動よみこみ
 if has('vim_starting') &&  file_name == ""
   autocmd VimEnter * NERDTree ./
 endif

 "autocomplpop.vim----------
 "<TAB>で補完
 function! InsertTabWrapper()
   let col = col('.') - 1
   if !col || getline('.')[col - 1] !~ '\k'
     return "\<TAB>"
   else
     if pumvisible()
       return "\<C-N>"
     else
       return "\<C-N>\<C-P>"
     end
   endif
 endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

"vundleでPluginを管理
set nocompatible
filetype off

set rtp+=~/.vim/vimfiles/        "vundleのディレクトリ
call vundle#rc()
Bundle 'Shougo/unite.vim'
Bundle 'ZenCoding.vim'
Bundle 'surround.vim'
Bundle 'AutoComplPop'
Bundle 'The-NERD-tree'
Bundle 'css3-syntax-plus'
Bundle 'browsereload-mac.vim'
Bundle 'open-browser.vim'
Bundle 'The-NERD-Commenter'
Bundle 'open-browser.vim'
Bundle 'jslint.vim'
filetype plugin indent on     " required!

 "browser aoutload -----------------------
let g:returnApp = "MacVim"
nnoremap <Space>bc :ChromeReloadStart<CR>
nnoremap <Space>bC :ChromeReloadStop<CR>
nnoremap <Space>bf :FirefoxReloadStart<CR>
nnoremap <Space>bF :FirefoxReloadStop<CR>
nnoremap <Space>bs :SafariReloadStart<CR>
nnoremap <Space>bS :SafariReloadStop<CR>
nnoremap <Space>bo :OperaReloadStart<CR>
nnoremap <Space>bO :OperaReloadStop<CR>
nnoremap <Space>ba :AllBrowserReloadStart<CR>
nnoremap <Space>bA :AllBrowserReloadStop<CR>
"openbrowser
" カーソル下のURLをブラウザで開く
nnoremap <Leader>o <Plug>(openbrowser-open)
vmap <Leader>o <Plug>(openbrowser-open)
" ググる
nnoremap <Leader>g :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>
" 編集中ファイルを開く
let g:openbrowser_open_filepath_in_vim = 0
let g:openbrowser_open_rules = {'open' : 'open -a Chrome {shellescape(uri)}&'} nnoremap[ :silent OpenBrowser %

"netrw vim setting
" netrwは常にtree view
let g:netrw_liststyle = 3
let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
let g:netrw_altv = 1
let g:netrw_alto = 1

 "------------------------------------------------------------
 set hidden " バッファを保存しなくても他のバッファを表示できるようにする
 set wildmenu " コマンドライン補完を便利に
 set showcmd " タイプ途中のコマンドを画面最下行に表示
 set hlsearch " 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する）
 " モードラインオフにしてsecuremodelinesスクリプトを使う
 "　set nomodeline

 "------------------------------------------------------------
 " ユーザビリティ オプション
 set autoread       " 更新時自動再読込み
 set noswapfile       " スワップファイルを作らない
 set ignorecase " 検索時に大文字・小文字を区別しない。ただし、検索後に大文字小文字が
 set smartcase " 混在しているときは区別する
 set wrapscan "検索時に最後まで行ったら最初に戻る
 set noincsearch "検索文字列入力時に順次対象文字列にヒットさせない
 set backspace=indent,eol,start "バックスペースキーで削除できるようにする。
 set autoindent " オートインデント
 set nostartofline " 移動コマンドを使ったとき、行頭に移動しない
 set ruler " 画面最下行にルーラーを表示する
 set laststatus=2 " ステータスラインを常に表示する
 set confirm " バッファが変更されたとき、コマンドエラーでなく、保存するかどうか確認
 set visualbell " ビープの代わりにビジュアルベル（画面フラッシュ）を使う
 set t_vb= " そしてビジュアルベルも無効化する
 set mouse=a " 全モードでマウスを有効化
 set cmdheight=2 " コマンドラインの高さを2行に
 set number " 行番号を表示
 set notimeout ttimeout ttimeoutlen=200 " キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
 set pastetoggle=<F11> " <F11>キーで'paste'と'nopaste'を切り替える
 set title "編集中のファイル名を表示
 " ファイルを開いた際に、前回終了時の行で起動
 autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
 autocmd BufWritePre * :%s/\s\+$//ge " 保存時に行末の空白を除去する
 set nobackup "バックアップを作らいない
 "分割でファイルを開く位置
 "set splitright
 "set splitbelow
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8


 "------------------------------------------------------------
 " インデント関連のオプション"
 " タブ文字の代わりにスペース2個を使う場合の設定。
 " この場合、'tabstop'はデフォルトの8から変えない。
 set shiftwidth=2
 set softtabstop=2
 set expandtab
 " インデントにハードタブを使う場合の設定。
 " タブ文字を2文字分の幅で表示する。
 "set shiftwidth=2
 "set tabstop=2
 set list
 set listchars=tab:»»,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
 " visual モードで連続して、インデント出来るように設定
 vnoremap <silent> > >gv
 vnoremap <silent> < <gv

 "------------------------------------------------------------
 " マッピング
 map Y y$ " Yの動作をDやCと同じにする
 nnoremap <C-L> :nohl<CR><C-L>" <C-L>で検索後の強調表示を解除する
 inoremap jj <Esc>
 noremap ; :
 noremap : ;
 map ¥ <leader>

 "------------------------------------------------------------
