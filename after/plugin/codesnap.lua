os.execute('mkdir -p "' .. os.getenv("HOME") .. "/Pictures/codesnap" .. '"')
require("codesnap").setup({
    watermark = "",
    bg_padding = 0,
    has_line_number = true,
    min_width = 42,
    save_path = os.getenv("HOME") .. "/Pictures/codesnap",
    show_workspace = true,
})
    
