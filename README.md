# fuzzy-vim
Plugin for quickly open files using your prefered fuzzy search in neovim

## install
Download fuzzy-vim.lua to you lua folder 

nvim
|__lua
|  |__"fuzzy-vim.lua"
|__init.vim

And bind these shortcuts for start using
```
nnoremap <leader>f :lua require'fuzzy-search'.FuzzySearch(false, false)<CR>
nnoremap <leader>v :lua require'fuzzy-search'.FuzzySearch(true, false)<CR>
nnoremap <leader>s :lua require'fuzzy-search'.FuzzySearch(false, true)<CR>
```
