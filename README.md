# fuzzy-vim
Plugin for quickly open files using your prefered fuzzy search in neovim

## install
Download fuzzy-vim.lua to you lua folder 

And bind these shortcuts to start using
```
nnoremap <leader>f :lua require'fuzzy-search'.FuzzySearch(false, false)<CR>
nnoremap <leader>v :lua require'fuzzy-search'.FuzzySearch(true, false)<CR>
nnoremap <leader>s :lua require'fuzzy-search'.FuzzySearch(false, true)<CR>
```
## Dependencies
Whatever fzf like you want to use. Tested with fzf, fzy, mmenu
Most recent Neovim
