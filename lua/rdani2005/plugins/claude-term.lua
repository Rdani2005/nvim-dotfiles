local M = {}

local state = { buf = nil, win = nil }

local function open_float()
	local width = math.floor(vim.o.columns * 0.9)
	local height = math.floor(vim.o.lines * 0.88)
	local row = math.floor((vim.o.lines - height) / 2)
	local col = math.floor((vim.o.columns - width) / 2)

	if not state.buf or not vim.api.nvim_buf_is_valid(state.buf) then
		state.buf = vim.api.nvim_create_buf(false, true)
	end

	state.win = vim.api.nvim_open_win(state.buf, true, {
		relative = "editor",
		width = width,
		height = height,
		row = row,
		col = col,
		style = "minimal",
		border = "rounded",
		title = " Claude Code ",
		title_pos = "center",
	})

	if vim.bo[state.buf].buftype ~= "terminal" then
		vim.cmd("terminal claude")
	end

	vim.cmd("startinsert")
end

function M.toggle()
	if state.win and vim.api.nvim_win_is_valid(state.win) then
		vim.api.nvim_win_hide(state.win)
		state.win = nil
	else
		open_float()
	end
end

-- <leader>cc to toggle
vim.keymap.set("n", "<leader>cc", M.toggle, { desc = "Toggle Claude Code" })

return M
