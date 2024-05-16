local status, startup_screen = pcall(require, "startup")
if not status then
	return
end

startup_screen.setup({
	theme = "dashboard",
})
