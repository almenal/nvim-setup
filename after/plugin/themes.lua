require("gruvbox").setup({
    italic = {
        strings = false,
    },
    bold = true,
    contrast = "hard"
})


-- Options:
--  dark
--  darker
--  cool
--  deep
--  warm
--  warmer
--  light
require('onedark').setup {
    style = 'warmer'
}
-- require('onedark').load()

require('nightfox')

-- set startup theme, can be switched anytime
vim.cmd("colorscheme duskfox")

