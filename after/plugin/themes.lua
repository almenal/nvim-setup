-- Themery: theme manager with live preview
require("themery").setup({
  themes = {
      -- System
      "default",
      -- Nightfox
        "carbonfox",
        "dawnfox",
        "dayfox",
        "duskfox",
        "nightfox",
        "nordfox",
        "terafox",
      -- Gruvbox
        {
            name = "Gruvbox dark",
            colorscheme = "gruvbox",
            before = [[
              -- All this block will be executed before apply "set colorscheme"
              vim.opt.background = "dark"
            ]],
          },
          {
            name = "Gruvbox light",
            colorscheme = "gruvbox",
            before = [[
              vim.opt.background = "light"
            ]],
            after = [[-- Same as before, but after if you need it]]
      },
        "retrobox",
      -- Others
        "blue",
        "darkblue",
        "delek",
        "desert",
        "elflord",
        "evening",
        "habamax",
        "industry",
        "koehler",
        "lunaperche",
        "morning",
        "murphy",
        "onedark",
        "pablo",
        "peachpuff",
        "quiet",
        "ron",
        "shine",
        "slate",
        "sorbet",
        "torte",
        "unokai",
        "vim",
        "wildcharm",
        "zaibatsu",
        "zellner",
    },
    livePreview = true,
})

