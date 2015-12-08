source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:iswindows=1
else
    let g:iswindows=0
endif

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
"********************************************
"  _vimrc/_gvimrc for windows
"  BY Douboer
"********************************************

"
" echo "loading _vimrc ... "
"

"����altkeysӳ�䵽�����б�
set winaltkeys=no
"
" ��ͬ���ı�����ʾ
" ͬʱ֧��GBK��UTF-8����
"
"set fileencoding=gb18030
"set fileencodings=utf-8,gb18030,utf-16,big5
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set encoding=utf-8 "set encoding=cp936
"�������������ִ�е�shell

"change color scheme from 16 to 256
"set t_Co=256

"
" ��������
"
"windows
"set guifont=Consolas:h11:cANSI
"
"linux
"set guifont=monospace\ 10

"
" �������, ������ɫ����
"
" winsize 1024 768
"au GUIEnter * simalt ~x
colorscheme desert

syntax enable
syntax on

"
" ����tab�Ʊ��Ϊ4���ո�
"
"set cinoptions=>4,e0,n0,f0,{0,}0,^0,:s,=s,l0,gs,hs,ps,ts,+s,c3,C0,(2s,us,
 "                         \U0,w0,m0,j0,)20,*30
"
"set cindent
"


" չ����ʾ�ļ����Ͳ˵�

"let do_syntax_sel_menu = 1 | runtime! synmenu.vim | aunmenu &Syntax.&Show\ filetypes\ in\ menu

"
" �����﷨
"
"if &filetype != 'javacc'
"    setlocal filetype=javacc
"endif
"set syntax=javacc
"cal SetSyn("cpp")
"cal SetSyn("vb")
"cal SetSyn("perl")
"cal SetSyn("awk")

"
" �����ļ�����ָ��Ŀ¼
"
"set shell=bash.exe
"set shellcmdflag=-c
"set shellquote=
"set shellxquote="
"set backupdir=C:\tmp
"let tags_dir =getcwd()."\tags"
"let cscope_dir =getcwd()."\cscope.out"

"no backup file(*~)
set nobackup

set tags+=./tags
"
" û�о��������Ӿ�����
"
set vb t_vb=
"�������л�
"set hidden
"
" ����swf�����ļ�
"
setlocal noswapfile

"
" ��ʾ�к�
"
set number

"
" ���ع�����
"
" see :help 'guioptions'
"
set guioptions-=T
"set guioptions-=m

"
" ״̬������ʾ�ֽ�������������������ǰ�е���Ϣ
"
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2 " always show the status line

"
"auto-comments for // and /* */
"setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
"
"disable auto-comments for //
"setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,f://
"
"disable auto-comments for // and /* */
"
"setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*
setlocal comments=""
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Open=1
let Tlist_Auto_Update=1
let Tlist_Use_Right_Window = 1  
set completeopt=longest,menu 
set nocp
filetype plugin indent on
""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
autocmd BufWinEnter \[Buf\ List\] setl nonumber 
set cscopequickfix=s-,c-,d-,i-,t-,e-
"set autowrite
" ����ƶ���buffer�Ķ����͵ײ�ʱ����5�о���
set scrolloff=4

"set autoindent
" ΪC�����ṩ�Զ�����
set smartindent

" ʹ��C��ʽ������
"set cindent

" �Ʊ����ʾΪ4��space
set tabstop=4

" ͳһ����Ϊ4��space if tabstop == softtabstop && expandtab not set, will
set softtabstop=4
"set nohlsearch
set ic 
"let g:SuperTabRetainCompletionType = 0
"let g:SuperTabDefaultCompletionType = "<C-X><C-P>" 
   """"""""""""""""""""""""""""""
   " netrw setting
   """"""""""""""""""""""""""""""
let g:netrw_winsize = 30
nmap <silent> <leader>fe :vi.<cr>   
nmap <silent> <leader>tl :Tlist<cr>   
nmap <F4> :cn<cr>
nmap <F3> :cp<cr>
"autocmd FileType c set omnifunc=cppcomplete#Complete
nmap <silent> <leader>a :A<cr>   
" // The switch of the Source Explorer

" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 300

" // Set Enter key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set Space key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command :buffers!
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]
" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1

" // Let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0
" // Use program 'ctags' with argument '--sort=foldcase -R' to create or
" // update a tags file
"let g:SrcExpl_updateTagsCmd = ctags --sort=foldcase -R ."

" // Set "<F12>" key for updating the tags file artificially
"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_TagExpr = string('./filenametags')
""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "��������2���ַ��ſ�ʼ����
let g:LookupFile_AlwaysAcceptFirst = 1          "�س��򿪵�һ��ƥ����Ŀ
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_FileFilter = '\.class$\|\.o$\|\.obj$\|\.exe$\|\.jar$\|\.zip$\|\.war$\|\.ear$\|\.ko$\|\.order$'
" lookup file with ignore case
nmap <silent> <leader>lt :LUTags<cr>
nmap <silent> <leader>lb :LUBufs<cr>
nmap <silent> <leader>lw :LUWalk<cr>

function! UPDATE_TAGS()
  let _f_ = expand("%:p")
 
  let _cmd_ = "ctags -a  --fields=+a  --extra=+q "._f_
  echo _cmd_
  let _resp = system(_cmd_)
  unlet _cmd_
  unlet _f_
  unlet _resp
endfunction

function! SET_SHELL_BASH()
		set shell=bash.exe
		set shellcmdflag=-c
endfunction
 
function! SET_SHELL_CMD()
		set shell=cmd.exe
		set shellcmdflag=/c
endfunction

map <S-F6> :exec "!ctags -R  --fields=+a  --extra=+q"<cr>
map <F6>  :exec "!gtags"<cr>
map <F7> :AcpEnable<cr>
map <S-F7> :AcpDisable<cr>
"map <S-F5>  :exec "!gen_filenametags.sh &"<cr>
"autocmd BufWritePost *.cpp,*.h,*.c silent call UPDATE_TAGS()
let g:acp_enableAtStartup = 0
let g:acp_behaviorKeywordCommand = "\<C-p>"
let g:acp_ignorecaseOption = 1


"<<�� >>�����ƶ���space����
autocmd FileType h,c,cpp set shiftwidth=4 
autocmd FileType h,c,cpp set expandtab 
"����ctags��ִ��ta����ʱ���Դ�Сд
set ignorecase
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
""""""""""""""""""""""""""""""
" mark setting
""""""""""""""""""""""""""""""
"nmap <silent> <leader>hl <Plug>MarkSet
"vmap <silent> <leader>hl <Plug>MarkSet
nmap <A-h> <Plug>MarkClear
"vmap <silent> <leader>hh <Plug>MarkClear
"nmap <silent> <leader>hr <Plug>MarkRegex
"vmap <silent> <leader>hr <Plug>MarkRegex 
nmap <S-F8> <Plug>MarkSet
""""""""""""""""""""""""""""""""""""
"srcExpl settings
""""""""""""""""""""""""""""""""""""
let g:SrcExpl_refreshTime = 500 
nmap <A-p> :SrcExplToggle<CR>
"let g:SrcExpl_searchLocalDef = 1 
let g:SrcExpl_winHeight = 8 
let Gtags_OpenQuickfixWindow = 0


nmap <F8> :RegrepAdd<cr>
nmap <F2> :Regrep<cr>
nmap <A-e> :Gtags -g<cr>
nmap <A-d> :Gtags<cr><cr>
nmap <A-r> :Gtags -r<cr><cr>
nmap <A-q> :cw<cr>
"nmap <Esc> :<cr>
""""""""""""""""""""""""""""""
" showmarks setting
""""""""""""""""""""""""""""""
" Enable ShowMarks
"let showmarks_enable = 1
" Show which marks
"let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
"let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
"let showmarks_hlline_lower = 1
"let showmarks_hlline_upper = 1 
""""""""""""""""""""""""""""""
" markbrowser setting
""""""""""""""""""""""""""""""
"nmap <silent> <leader>mk :MarksBrowser<cr> 
"�����ʽ��
nmap <A-t>  :exec "!AStyle.exe --options=D:\\astyle\\bin\\alfred.opt % "<cr> 
"grep.vim
"let Grep_Cygwin_Find = 1
"let Grep_Shell_Quote_Char = ""
let Grep_Default_Filelist = '*.[ch]'

"preview
set previewheight=20
nmap <A-]> :ptag <C-R>=expand("<cword>")<CR><CR>
nmap <A-[> :pclose<cr>

"highlight current line
set cul


"resume session and viminfo
"if filereadable("Session.vim")
"    source Session.vim
"endif
"if filereadable("this.viminfo")
"    rviminfo this.viminfo
"endif

"update tags and cscope
map <F12> :call Do_CsTag()<CR>

function Do_CsTag()
    let dir = getcwd()
    if filereadable("tags")
        if(g:iswindows==1)
            let tagsdeleted=delete(dir."\\"."tags")
        else
            let tagsdeleted=delete("./"."tags")
        endif
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        if(g:iswindows==1)
            let csfilesdeleted=delete(dir."\\"."cscope.files")
        else
            let csfilesdeleted=delete("./"."cscope.files")
        endif
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if filereadable("cscope.out")
        if(g:iswindows==1)
            let csoutdeleted=delete(dir."\\"."cscope.out")
        else
            let csoutdeleted=delete("./"."cscope.out")
        endif
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
        "silent! execute "!ctags -R --c-types=+p --fields=+S *"
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        if(g:iswindows!=1)
            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        endif
        silent! execute "!cscope -b"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endfunction

" show cursor location
set ruler
set showmatch

" Doxygen
map fg : Dox<CR>

let g:DoxygenToolkit_authorName="fuyf"
let g:DoxygenToolkit_commentType = "C"
let g:DoxygenToolkit_versionString = "1.0"

set tags+=~/.vim/tags/cpp

"build tags of your own project with F12
map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q<CR>

