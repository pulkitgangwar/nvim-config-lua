local treesitter_status,treesitter = pcall(require,"nvim-treesitter.configs")


if not treesitter_status then
  print("treesitter not found")
  return
end

treesitter.setup({
  ensure_installed = {"html","css","javascript","typescript","markdown","json"},
  auto_install = false
}) 





  

