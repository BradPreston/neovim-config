local setup, treesitter = pcall(require, "nvim-treesitter.configs")
if not setup then
	return
end

treesitter.setup({
	ensure_installed = { "elixir", "eex", "heex" },
	highlight = { enable = true },
	indent = { enable = true },
})
