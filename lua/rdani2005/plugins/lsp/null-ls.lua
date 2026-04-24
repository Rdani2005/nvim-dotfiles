local ok, null_ls = pcall(require, "null-ls")
if not ok then
	return
end

local formatting = null_ls.builtins.formatting

local augroup = vim.api.nvim_create_augroup("NullLsFormat", { clear = true })

null_ls.setup({
	sources = {
		-- Lua
		formatting.stylua,

		-- JS/TS format (recomendado: prettierd si lo tienes)
		formatting.prettierd,

		-- ESLint desde none-ls-extras (ya no vive en core)
		require("none-ls.diagnostics.eslint_d"),
		require("none-ls.code_actions.eslint_d"),
	},

	on_attach = function(client, bufnr)
		if client.name ~= "null-ls" then
			return
		end

		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })

		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				-- eslint fix (si aplica)
				pcall(vim.lsp.buf.code_action, {
					apply = true,
				})

				-- format (solo null-ls)
				vim.lsp.buf.format({
					bufnr = bufnr,
					timeout_ms = 3000,
					filter = function(c)
						return c.name == "null-ls"
					end,
				})
			end,
		})
	end,
})
