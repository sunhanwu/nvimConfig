# neovim config

## setup
1. download lastly neovim
need `nvim --version` >= 0.8
```bash
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar -zxvf nvim-linux64.tar.gz
sudo cp nvim-linux64/bin/nvim /usr/bin/
```
2. clone config
```bash
git clone git@github.com:sunhanwu/nvimConfig.git ~/.config/nvim
```
3. Packer Install
`:Packer Install`

4. install dependencies
+ fzf
```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
```
+ rg
```bash
sudo apt install ripgrep
```
+ ctags
```bash
sudo apt install ctags
```
+ pynvim
```bash
pip3 install pynvim --upgrade
```


## usage
```txt
noremap <leader>tf :FloatermNew<CR>
noremap <A-f> :FloatermFirst<CR>
noremap <A-h> :FloatermHide<CR>
noremap <A-n> :FloatermNext<CR>
tnoremap jk <C-\><C-n>

" start fzf
noremap <leader>fz :Files<CR>
noremap <leader>fr :History<CR>
noremap <leader>fs :BLines<CR>

" telescope
noremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>
nnoremap <leader>fc :Telescope commands<CR>

" ToggleTerm
noremap <leader>th :ToggleTerm direction=horizontal size=30<CR>
noremap <leader>tsc :ToggleTermSendCurrentLine<CR>
noremap <leader>tsv :ToggleTermSendVisualLines<CR>

" session
noremap <leader>sl :SessionManager load_session<CR>
noremap <leader>sc :SessionManager save_current_session<CR>
```
