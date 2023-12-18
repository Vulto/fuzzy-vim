# fuzzy-vim
Plugin for quickly open files using your prefered fuzzy search in neovim

## Install
Download fuzzy-vim.lua to your lua folder

## Dependencies
Whatever fzf like you want to use. Tested with fzf, fzy, mmenu
Most recent Neovim

##Usage
The plugin provides a convenient way to perform fuzzy file searches and open the selected file in a new buffer or split.

## Key Mappings
In your init.vim, you can define key mappings for easy access. For example:
```
nnoremap <leader>f :lua require'fuzzy-search'.FuzzySearch(false, false)<CR>
nnoremap <leader>v :lua require'fuzzy-search'.FuzzySearch(true, false)<CR>
nnoremap <leader>s :lua require'fuzzy-search'.FuzzySearch(false, true)<CR>
```
## Or in lua
```
vim.api.nvim_set_keymap('n', '<leader>f', ':lua require"fuzzy-search".FuzzySearch(false, false)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>v', ':lua require"fuzzy-search".FuzzySearch(true, false)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':lua require"fuzzy-search".FuzzySearch(false, true)<CR>', { noremap = true, silent = true })
```

## License
This plugin is licensed under the MIT License.
