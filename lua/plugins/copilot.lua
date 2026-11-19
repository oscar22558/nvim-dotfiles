return {
	"zbirenbaum/copilot.lua",
	-- cmd = "Copilot",
	-- event = "InsertEnter",
	config = function()
		require("copilot").setup({
			-- linux --
			-- copilot_node_command = "node", -- or full path like "C:/msys64/ucrt64/bin/node.exe"
			-- server = {
			-- 	type = "nodejs",
			-- 	custom_server_filepath = "/c/Program Files/nodejs/node_modules/@github/copilot-language-server/dist/language-server.js",
			-- },
			--
			-- msys2 --
			server = {
				type = "binary",
				custom_server_filepath = "copilot-language-server.cmd",
			},
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = "<Tab>",
				},
			},
			panel = { enabled = false },
		})
	end,
}
