local neoclip_setup,neoclip = pcall(require,"neoclip")

if not neoclip_setup then 
  print("neoclip not found")
  return
end


neoclip.setup()
