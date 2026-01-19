-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	print("Mason is not installed")
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- import mason-null-ls plugin safely
local tool_ok, mason_tool_installer = pcall(require, "mason-tool-installer")
if not tool_ok then
	return
end

-- enable mason
mason.setup()
mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		-- "tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"lua_ls",
		"emmet_ls",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_tool_installer.setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"eslint_d",
	},
	run_on_start = true,
})
