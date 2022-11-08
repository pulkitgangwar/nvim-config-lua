local  lazygit_status,lazygit = pcall(require,"lazygit")

if not  lazygit_status then
  print("lazy git not found")
  return
end

lazygit.setup()
