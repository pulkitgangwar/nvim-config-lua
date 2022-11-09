local autopairs_setup,autopairs = pcall(require,"nvim-autopairs")
if not autopairs_setup then  print("auto pair not found") return end


autopairs.setup({});
