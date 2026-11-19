local is_msys2 = vim.env.MSYSTEM ~= nil

if is_msys2 then
	vim.g.clipboard = {
		name = "msys2-dev-clipboard",
		copy = {
			["+"] = "tee /dev/clipboard >/dev/null",
			["*"] = "tee /dev/clipboard >/dev/null",
		},
		paste = {
			["+"] = "tr -d '\\r' < /dev/clipboard",
			["*"] = "tr -d '\\r' < /dev/clipboard",
		},
		cache_enabled = 0,
	}
end
