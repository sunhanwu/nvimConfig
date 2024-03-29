"-------------------------------------------------------------------------------
" window
"-------------------------------------------------------------------------------
" Split window, 拆分串口
" 使用"ss"上下拆分
nmap ss :split<Return><C-w>w 
" 使用"sv"上下拆分
nmap sv :vsplit<Return><C-w>w
" Move window: 移动光标
" 向左移动
map sh <C-w>h
" 向上移动
map sk <C-w>k
" 向下移动
map sj <C-w>j
" 向右移动
map sl <C-w>l

" Resize window: options + 上下左右键调整窗口大小
" 在mac/linux中使用Alt键，在webssh
" 中alt没用，就使用Ctrl,WEBSSH主要的WINDOWS中使用
nmap <M-left> <C-w><
nmap <C-left> <C-w><
nmap s<left> <C-w><

nmap <M-right> <C-w>>
nmap <C-right> <C-w>>
nmap s<right> <C-w>>

nmap <M-up> <C-w>+
nmap <C-up> <C-w>+
nmap s<up> <C-w>+

nmap <M-down> <C-w>-
nmap <C-down> <C-w>-
nmap s<down> <C-w>-

" 插入模式移动光标: 插入模式下使用ctrl + hjkl移动光标 
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>
" hh在我用的单词里出现的频率极低，其实感觉home用的没有end多，统一风格都用大写的吧
"inoremap HH <Home>
" 单词中包含ll的太多了，所以用大写LL
"inoremap LL <End>
" jk <Esc>
" 插入模式下使用jk表示Esc键
inoremap jk <Esc>
" 插入模式鼠标滚轮抵消,不然会出现滚动鼠标录入了一堆5j5k
inoremap 5k <Esc>
inoremap 5j <Esc>
inoremap 9<CR> <Esc>a
" 快速跳转行首与行尾  
nnoremap L $
nnoremap H ^
" 向下5行: ctrl + j
noremap <C-j> 5j
" 向上5行: ctrl + k
noremap <C-k> 5k
" 保 存: 使用ctrl + s保存 
noremap <C-s> :w<CR>
noremap s :w<CR>
" Coc智能处理，使用IDEA Alt+Enter 同样按键
"noremap <M-Enter> :CocAction<CR>
inoremap <C-s> <ESC> :w<CR>
" 代码格式化
"noremap <leader>f :Format<CR> 
"noremap <leader>r :luafile ~/.wp/lua/run.lua<CR>

" 强制退出
map Q :q<CR>
"map qq :q<CR>
" 重新加载设置
map R :source $MYVIMRC<CR>
"自动关闭标签
inoremap <buffer> <C-v> <esc>yiwi<lt><esc>ea></><esc>hpF>i
set iskeyword+=<,>
iab <h1> <lt>h1> <lt>/h1><esc>5ha

" 全选
nmap <C-a> gg<S-v>G
" 加/减数字1
nnoremap + <C-a>
nnoremap - <C-x>
"-------------------------------------------------------------------------------
" Buffers
"-------------------------------------------------------------------------------
" Open current directory
" 插入模式移动光标
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>
" hh在我用的单词里出现的频率极低，其实感觉home用的没有end多，统一风格都用大写的吧
"inoremap HH <Home>
" 单词中包含ll的太多了，所以用大写LL
"inoremap LL <End>
" jk <Esc>
inoremap jk <Esc>
" 插入模式鼠标滚轮抵消,不然会出现滚动鼠标录入了一堆5j5k
inoremap 5k <Esc>
inoremap 5j <Esc>
inoremap 9<CR> <Esc>a
" 快速跳转行首与行尾  
nnoremap L $
nnoremap H ^
" 向下5行
noremap <C-j> 5j
" 向上5行
noremap <C-k> 5k
" 保存
noremap <C-s> :w<CR>
" Coc智能处理，使用IDEA Alt+Enter 同样按键
noremap <M-Enter> :CocAction<CR>
inoremap <C-s> <ESC> :w<CR>
" 代码格式化
"noremap <leader>f :Format<CR> 

" 强制退出
map Q :q<CR>
" 重新加载设置
map R :source $MYVIMRC<CR>
"自动关闭标签
inoremap <buffer> <C-v> <esc>yiwi<lt><esc>ea></><esc>hpF>i
set iskeyword+=<,>
iab <h1> <lt>h1> <lt>/h1><esc>5ha

" 全选
nmap <C-a> gg<S-v>G
" 加/减数字1
nnoremap + <C-a>
nnoremap - <C-x>
"-------------------------------------------------------------------------------
" Buffers
"-------------------------------------------------------------------------------
" Open current directory
"nmap te :tabedit
"nmap <S-Tab> :tabprev<Return>
nmap <S-Tab> :bprev<Return>
"nmap <Tab> :tabnext<Return>
nmap <Tab> :bnext<Return>
" 窗口管理器
" invoke with '-'
nmap  -  <Plug>(choosewin)
"nmap  sw  <Plug>(choosewin)
"nmap  <leader>w  <Plug>(choosewin)

" system clipboard
nmap <leader>y "+yy
nmap <leader>p "+p


" new floaterm
noremap <leader>tf :FloatermNew --height=0.8 --width=0.9<CR>
noremap <A-f> :FloatermFirst<CR>
noremap <A-h> :FloatermHide<CR>
"foremap <A-n> :FloatermNext<CR>
tnoremap jk <C-\><C-n>

" start fzf
noremap <leader>fz :Files<CR>
noremap <leader>fr :History<CR>
noremap <leader>fs :BLines<CR>

" telescope
noremap <leader>ff :Telescope find_files theme=dropdown<CR>
noremap <leader>fg :Telescope live_grep theme=dropdown<cr>
noremap <leader>fb :Telescope buffers theme=dropdown<cr>
noremap <leader>fh :Telescope help_tags theme=dropdown<cr>
noremap <leader>fc :Telescope commands theme=dropdown<CR>
noremap <leader>fgs :lua require("telescope").extensions.live_grep_raw.live_grep_args()<CR>


" ToggleTerm
noremap <leader>th :ToggleTerm direction=horizontal size=30<CR>
noremap <leader>tsc :ToggleTermSendCurrentLine<CR>
noremap <leader>tsv :ToggleTermSendVisualLines<CR>

" session
noremap <leader>sl :SessionManager load_session<CR>
noremap <leader>sc :SessionManager save_current_session<CR>

" search and replace
nnoremap <leader>S <cmd>lua require('spectre').open()<CR>
	"search current word
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <cmd>lua require('spectre').open_visual()<CR>
	"search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
	" run command :Spectre

" todo-comments 
noremap <leader>td :TodoTelescope theme=dropdown<CR>

" close current buffer
noremap <A-w> :bd<CR>

" cs: change surround

" gs: switch between True and False

" :Tabularize /=

" simpylFold
" zc: fold
" zo: open

" tagbar
noremap <leader>tb :TagbarToggle<cr>

" semshi
noremap <leader>rr :Semshi rename<CR>

" nerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>tt :NERDTreeToggle<CR>
