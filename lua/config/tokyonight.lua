return {
	opts = {
		style = "night", -- or "storm", "moon", "day"
		on_highlights = function(hl, c)
			-- Text and background inside the "add file" popup
			hl.NeoTreeFloatNormal = { fg = c.fg, bg = c.bg_float }
			-- Border of the popup window
			hl.NeoTreeFloatBorder = { fg = c.blue, bg = c.bg_float }
			-- Title bar text ("Enter name for new file...")
			hl.NeoTreeTitleBar = { fg = c.bg_dark, bg = c.blue, bold = true }
		end,
	},
}
