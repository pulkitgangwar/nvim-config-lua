local trouble_status,trouble = pcall(require,"trouble")

if not trouble_status then 
  print("visual error tool not found(trouble library)")
  return
end


trouble.setup()
