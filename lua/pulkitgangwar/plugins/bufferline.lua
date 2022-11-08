local bufferline_setup,bufferline = pcall(require,"bufferline")
if not bufferline_setup then
  print("bufferline not found")
  return
end

bufferline.setup {
  options = {

    offsets = {
        {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
        },
    }
  }
}
