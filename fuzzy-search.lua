-- ~/.config/nvim/lua/fuzzy-search.lua
local M = {}

M.FuzzySearch = function(vertical_split, horizontal_split)
    local width = vim.o.columns - 4
    local height = 15

    if vim.o.columns >= 85 then
        width = 80
    end

    local buf = vim.api.nvim_create_buf(false, true)
    local win = vim.api.nvim_open_win(
        buf,
        true,
        {
            relative = 'editor',
            style = 'minimal',
            border = 'shadow',
            noautocmd = true,
            width = width,
            height = height,
            col = math.min((vim.o.columns - width) / 2),
            row = math.min((vim.o.lines - height) / 2 - 1),
        }
    )

    local file = vim.fn.tempname()
    local command = 'find $HOME -type f | fzy -l 15'

    command = command .. ' > ' .. file

    vim.fn.termopen(command, {
        on_exit = function()
            vim.api.nvim_command('bdelete!')
            local f = io.open(file, 'r')
            local stdout = f:read('*all')
            f:close()
            os.remove(file)

            if vertical_split then
                vim.api.nvim_command('vsp | edit ' .. stdout)
            elseif horizontal_split then
                vim.api.nvim_command('sp | edit ' .. stdout)
            else
                vim.api.nvim_command('edit ' .. stdout)
            end

            -- Focus the new window and enter insert mode
            vim.api.nvim_set_current_win(win)
            vim.api.nvim_feedkeys('i', 'n', true)
        end
    })
end

return M
