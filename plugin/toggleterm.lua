require("toggleterm").setup{
    open_mapping = [[<leader><leader>]],
    insert_mappings = false,
    direction = 'float'
}

local Terminal  = require('toggleterm.terminal').Terminal
local htop = Terminal:new({ 
    cmd = "htop",
    direction = "tab",
    display_name = "htop",
})

function toggle_htop()
    htop:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>h", "<cmd>lua toggle_htop()<CR>", {noremap = true, silent = true})
