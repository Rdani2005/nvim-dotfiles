local status, gleam = pcall(require, "gleam")

if not status then
	return
end

gleam.setup({})
