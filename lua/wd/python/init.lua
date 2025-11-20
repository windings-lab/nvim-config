 tree_log("<leader>ipp: init python project(Not finished")
vim.keymap.set("n", "<leader>ipp", function()
  -- path to your template
  local template = vim.fn.stdpath("config") .. "/lua/wd/python/.nvim.lua.example"
  -- target file in current working directory
  local target = vim.fn.getcwd() .. "/.nvim.lua"

  if vim.fn.filereadable(target) == 1 then
    print(".nvim.lua already exists in this project")
    return
  end

  -- copy file
  vim.fn.writefile(vim.fn.readfile(template), target)
  print("Initialized python project: " .. target)
end, { silent = true })
